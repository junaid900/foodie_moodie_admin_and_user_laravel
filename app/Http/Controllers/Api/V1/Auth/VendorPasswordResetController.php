<?php

namespace App\Http\Controllers\Api\V1\Auth;

use App\CentralLogics\Helpers;
use App\Http\Controllers\Controller;
use App\Models\Vendor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Mail;

class VendorPasswordResetController extends Controller
{
    
    public function reset_password_request(Request $request)
    {
        
        $validator = Validator::make($request->all(), [
            'type' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }
        if($request['type']=="phone"){
            $vendor = Vendor::Where(['phone' => $request['phone']])->first();
        }else if($request['type']=="email"){
            $vendor = Vendor::Where(['email' => $request['email']])->first();
        }else{
            return _response(0,'Unable to process password reset request.',[]);
        }
        
        
        if(isset($vendor)){
            $token = rand('111111111','999999999');
            $vendor->remember_token = $token;
            $vendor->update();
            return _response(1,"Success",["code"=>"success","reset_token"=>$token]);
        }else{
            return _response(0,"No record found for these credentials.");
        }
        exit;
        $validator = Validator::make($request->all(), [
            'email' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        $vendor = Vendor::Where(['email' => $request['email']])->first();

        if (isset($vendor)) {
            $token = rand(1000,9999);
            DB::table('password_resets')->updateOrInsert([
                'email' => $vendor['email'],
                'token' => $token,
                'created_at' => now(),
            ]);
            try{
                if (config('mail.status')) {
                    Mail::to($vendor['email'])->send(new \App\Mail\PasswordResetMail($token, $vendor->f_name));
                }

            }catch(\Exception $ex){
                info($ex);
            }

            return response()->json(['message' => 'Email sent successfully.'], 200);
        }
        return response()->json(['errors' => [
            ['code' => 'not-found', 'message' => 'Email not found!']
        ]], 404);
    }

    public function verify_token(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|exists:vendors,email',
            'reset_token'=> 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        $data = DB::table('password_resets')->where(['token' => $request['reset_token'],'email'=>$request->email])->first();
        if (isset($data) || (env('APP_MODE') == 'demo' && $request['reset_token'] == '1234' )) {
            return response()->json(['message'=> translate("OTP found, you can proceed")], 200);
        }
        return response()->json(['errors' => [
            ['code' => 'reset_token', 'message' => 'Invalid OTP.']
        ]], 400);
    }

    public function reset_password_submit(Request $request)
    {
        
        $validator = Validator::make($request->all(), [
            'reset_token'=>'required|exists:vendors,remember_token',
            'password'=> 'required|min:6',
            
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }
        try{
            
            DB::table('vendors')->where(['remember_token'=>$request->reset_token])->update([
                    'password' => bcrypt($request['password']),"remember_token"=>"1234567"
                ]);
                return _response(1,"Password changed successfully.",["code"=>"success","message"=>"Password changed successfully."]);
                
        }catch(Exception $e){
            return _response(0,"Failed to update passsword",[]);
        }
        
                
exit;
        if(env('APP_MODE') == 'demo') {
            if ($request['reset_token'] != '1234') {
                return response()->json(['errors' => [
                    ['code' => 'invalid', 'message' => translate('messages.invalid_otp')]
                ]], 400);
            }
            
                DB::table('vendors')->where(['phone' => $request->phone,'remember_token'=>$request->reset_token])->update([
                    'password' => bcrypt($request['password'])
                ]);
                
                return response()->json(['message' => translate('Password changed successfully.')], 200);
            
            return response()->json(['errors' => [
                ['code' => 'mismatch', 'message' => translate('messages.password_mismatch')]
            ]], 401);
        }


        $data = DB::table('password_resets')->where(['email'=>$request['email'],'token' => $request['reset_token']])->first();
        if (isset($data)) {
            if ($request['password'] == $request['confirm_password']) {
                DB::table('vendors')->where(['email' => $data->email])->update([
                    'password' => bcrypt($request['confirm_password'])
                ]);
                DB::table('password_resets')->where(['token' => $request['reset_token']])->delete();
                return response()->json(['message' => translate('Password changed successfully.')], 200);
            }
            return response()->json(['errors' => [
                ['code' => 'mismatch', 'message' => translate('messages.password_mismatch')]
            ]], 401);
        }
        return response()->json(['errors' => [
            ['code' => 'invalid', 'message' => translate('messages.invalid_otp')]
        ]], 400);
    }
    
    public function send_mail(){;
        $subject = "Test Email";
        $message = "TEst Message";
        echo 'sending meial=>';
	    $remoteUrl = 'https://karwan-e-shafqat.com.pk/mail.php';
	    $postData = [
            'to' => 'mailto:atif99ml@gmail.com',
            'subject' => $subject ,
            'message' => $message,
        ];
        $ch = curl_init($remoteUrl);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($postData)); // Add any necessary POST data
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        
        $response = curl_exec($ch);
    
        
        if ($response === false) {
             echo 'cURL error: ' . curl_error($ch);
            return false;
        } else {
            return true;
        }
        
        curl_close($ch);
	}
}
