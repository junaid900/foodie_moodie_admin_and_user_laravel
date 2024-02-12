<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\User;
use App\Models\OrderOnlinePayments;
use App\CentralLogics\Helpers;

use DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;

class JazzcashController extends Controller
{
    
    public function do_checkout(Request $request){
        
    
        
         if ($_GET['data']) {

            // Get the encrypted data from the URL
            $encryptedData = $_GET['data'];

            // Decrypt the data using a shared key
            $decryptedData = base64_decode($encryptedData);

            // Split the data into individual parts
            list($total_price, $order_id) = explode('|', $decryptedData);

            // Access the individual values
            // echo "Total Price: $total_price, Order ID: $order_id";
            $product_price = $total_price;
            $user_id = Auth()->id();
            $order_id = $order_id;
        } else {
            $product_price = $_GET['amount'];
            $user_id = $_GET['user_id'];
            $order_id = $_GET['order_id'];
        }


        
        $temp_amount 	= floatval($product_price) * 100;
        $amount_array 	= explode('.', $temp_amount);
        $pp_Amount 		= $amount_array[0];

        //date for sending it in the PG.
        $DateTime 		= new DateTime();
        $pp_TxnDateTime = $DateTime->format('YmdHis');

        //payment page request expired after one hour
        //code
        $ExpiryDateTime = $DateTime;
        $ExpiryDateTime->modify('+' . 1 . ' hours');
        $pp_TxnExpiryDateTime = $ExpiryDateTime->format('YmdHis');



        //unique transaction id code
        $pp_TxnRefNo = $pp_TxnDateTime;
        
        // Enter recored in order_online_payment
        try{
            $payment = new OrderOnlinePayments();
            $payment->order_id = $order_id;
            $payment->user_id = $user_id;
            $payment->payable_amount = $pp_Amount;
            $payment->ref_no = $pp_TxnRefNo;
            $payment->save();
        }catch(Exception $e){
            
        }
        
    
        //data for sending it in the Jazzcash
        $post_data =  array(
            "pp_Version" 			=>Config::get('constant.jazzcash.VERSION') ,
            "pp_TxnType" 			=> "MWALLET",
            "pp_Language" 			=> Config::get('constant.jazzcash.LANGUAGE') ,
            "pp_MerchantID" 		=> Config::get('constant.jazzcash.MERCHANT_ID'),
            "pp_SubMerchantID" 		=> "",
            "pp_Password" 			=> Config::get('constant.jazzcash.PASSWORD'),
            "pp_BankID" 			=> "TBANK",
            "pp_ProductID" 			=> "RETL",
            "pp_TxnRefNo" 			=> $pp_TxnRefNo,
            "pp_Amount" 			=> $pp_Amount,
            "pp_TxnCurrency" 		=> Config::get('constant.jazzcash.CURRENCY_CODE'),
            "pp_TxnDateTime" 		=> $pp_TxnDateTime,
            "pp_BillReference" 		=> "billRef",
            "pp_Description" 		=> "Description of transaction",
            
            "pp_TranExpiryDateTime" => $pp_TxnExpiryDateTime,
            "pp_ReturnURL" 			=> Config::get('constant.jazzcash.RETURN_URL'),
            "pp_SecureHash" 		=> "",
            "ppmpf_1" 				=> "$order_id",
            "ppmpf_2" 				=> "$user_id",
            "ppmpf_3" 				=> "3",
            "ppmpf_4" 				=> "4",
            "ppmpf_5" 				=> "5",
        );
        $pp_SecureHash =    $this->get_secure_hash($post_data);
        $post_data['pp_SecureHash'] = $pp_SecureHash;
        //code for inserting data in the db


        Session::put('post_data' , $post_data);
        // prx($post_data);
    return view('admin-views.jazzcash.jazz_cash_view');


    }
    private function get_secure_hash($data_array){
        ksort($data_array);
        $str = '';
        foreach($data_array as $key => $value){
            if(!empty($value)){
                $str = $str . '&'. $value;
            }
        }
        $str = Config::get('constant.jazzcash.INTEGRETY_SALT').$str;
        $pp_SecureHash = hash_hmac('sha256',$str ,Config::get('constant.jazzcash.INTEGRETY_SALT'));
        return $pp_SecureHash;

    }
    public function payment_status(Request $request){
        $response = $request->all();
        
        $msg = $response['pp_ResponseMessage'];
        $order_id = $response['ppmpf_1'];
        $user_id = $response['ppmpf_2'];
        $tr_id = $response['pp_TxnRefNo'];
        $amount = $response['pp_Amount']/100;
        $payment =  OrderOnlinePayments::where(["ref_no"=>$tr_id])->first();
        $payment->msg = $msg;
        
        if($response['pp_ResponseCode'] == '000'){
        
            
            $order = Order::find($order_id);
            $order->payment_status = "paid";
            $order->order_status = "confirmed";
            $order->update();
            
            // Update OrderOnlinePayments 
            
            $payment->paid_amount = $amount;
            $payment->status = 'Successful';
            $payment->save();
            
            return view('admin-views.jazzcash.payment_status',['response' => $response]);
            
          } elseif($response['pp_ResponseCode'] != '000'){
              
            $payment->status = 'Failed';
            $payment->save();
            
            return view('admin-views.jazzcash.payment_status_failed');
            
        }else{
            $payment->status = 'Failed';
            $payment->save();
            return view('admin-views.jazzcash.payment_status_failed');
        }
        // if status === 124  then payment is on waiting
    }
    
    public function calculate_total(Request $request)
    {
        $responseData = Helpers::jazz_cash_order_place($request);
        $content = $responseData->getContent();
        $data = json_decode($content, true);
        $data['status_code'];
        if ($data['status_code'] == 1) {
            $product_price = $data['response']['total_ammount'];
            $order_id = $data['response']['order_id'];
            return _response(1, 'data fetched', ['total_price' => $product_price, 'order_id' => $order_id], 200);
        } else {
            return $responseData;
        }
    }
}
