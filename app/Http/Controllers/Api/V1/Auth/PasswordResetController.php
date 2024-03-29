<?php

namespace App\Http\Controllers\Api\V1\Auth;

use App\CentralLogics\Helpers;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\CentralLogics\SMS_module;
use Illuminate\Support\Facades\Mail;

class PasswordResetController extends Controller
{
    public function reset_password_request(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'phone' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        $customer = User::Where(['phone' => $request['phone']])->first();
        if(isset($customer)){
            $token = rand('111111111','999999999');
            $customer->remember_token = $token;
            $customer->update();
            return _response(1,"Success",["code"=>"success","reset_token"=>$token]);
        }else{
            return _response(0,"This phone number is not registered.");
        }
        exit;

        if (isset($customer)) {
            if(env('APP_MODE')=='demo')
            {
                return response()->json(['message' => translate('messages.otp_sent_successfull')], 200);
            }
            $token = rand(1000,9999);
            DB::table('password_resets')->insert([
                'email' => $customer['email'],
                'token' => $token,
                'created_at' => now(),
            ]);
            // Mail::to($customer['email'])->send(new \App\Mail\PasswordResetMail($token, $customer->f_name));
            // return response()->json(['message' => 'Email sent successfully.'], 200);
            $response = SMS_module::send($request['phone'],$token);
            if($response == 'success')
            {
                return response()->json(['message' => translate('messages.otp_sent_successfull')], 200);
            }
            else
            {
                return response()->json([
                    'errors' => [
                        ['code' => 'otp', 'message' => translate('messages.failed_to_send_sms')]
                ]], 405);
            }
        }
        return response()->json(['errors' => [
            ['code' => 'not-found', 'message' => 'Phone number not found!']
        ]], 404);
    }

    public function verify_token(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'phone' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10',
            'reset_token'=> 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }
        $user=User::where('phone', $request->phone)->first();
        if (!isset($user)) {
            return response()->json(['errors' => [
                ['code' => 'not-found', 'message' => 'Phone number not found!']
            ]], 404);
        }

        if(env('APP_MODE')=='demo')
        {
            if($request['reset_token']=="1234")
            {
                return response()->json(['message'=>"OTP found, you can proceed"], 200);
            }
            return response()->json(['errors' => [
                ['code' => 'invalid', 'message' => 'Invalid OTP.']
            ]], 400);
        }

        $data = DB::table('password_resets')->where(['token' => $request['reset_token'],'email'=>$user->email])->first();
        if (isset($data)) {
            return response()->json(['message'=>"OTP found, you can proceed"], 200);
        }
        return response()->json(['errors' => [
            ['code' => 'invalid', 'message' => 'Invalid OTP.']
        ]], 400);
    }

    public function reset_password_submit(Request $request)
    {
        
        $validator = Validator::make($request->all(), [
            'phone' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10|exists:users,phone',
            'reset_token'=> 'required',
            'password'=> 'required|min:6',
            
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }
        
        $user = User::where(["phone"=>$request->phone,"remember_token"=>$request->reset_token])->first();
        if(isset($user)){
            $user->phone = $request->phone;
            $user->password = bcrypt($request->password);
            $user->remember_token = "";
            $user->save();
            return _response(1,"Success",["code"=>"success","message"=>"Password changed successfully."]);
        }else{
            return _response(0,"Password reset request failed.");
        }
        exit;
        if(env('APP_MODE')=='demo')
        {
            if($request['reset_token']=="1234")
            {
                DB::table('users')->where(['phone' => $request['phone']])->update([
                    'password' => bcrypt($request['confirm_password'])
                ]);
                return response()->json(['message' => 'Password changed successfully.'], 200);
            }
            return response()->json([
                'message' => 'Phone number and otp not matched!'
            ], 404);
        }


        $data = DB::table('password_resets')->where(['token' => $request['reset_token']])->first();
        if (isset($data)) {
            if ($request['password'] == $request['confirm_password']) {
                DB::table('users')->where(['email' => $data->email])->update([
                    'password' => bcrypt($request['confirm_password'])
                ]);
                DB::table('password_resets')->where(['token' => $request['reset_token']])->delete();
                return response()->json(['message' => 'Password changed successfully.'], 200);
            }
            return response()->json(['errors' => [
                ['code' => 'mismatch', 'message' => 'Password did,t match!']
            ]], 401);
        }
        return response()->json(['errors' => [
            ['code' => 'invalid', 'message' => translate('messages.invalid_otp')]
        ]], 400);
    }
    
    
    public function forgot_password_link_request(Request $request){
        
        
        
        try{
            $data = ["name"=>"Ramzan","message"=>"Testing Mail"];
        $user['to'] = 'atif99ml@gmail.com';
        Mail::send('mail',$data,function ($messages) use ($user){
            $messages->to($user['to']);
            $messages->subject('Testing Mail');
        });
        }catch(Exception $e){
           echo 'erro'.$e; 
        }
        
        echo 'done';
        //exit;
        $email = $request->email;
        $find_user = User::where('email', $email)->first();
        if($find_user){
        $token = rand('111111111','999999999');
        $find_user->remember_token = $token;
        $find_user->update();
        if ($find_user) {
            $maildata['username'] = $find_user->f_name." ".$find_user->l_name;
            // $maildata['password'] = $request->password;
            $maildata['email'] = $request->email;
            $id = $find_user->id;
            // $encrypt_id =encryptString($id);
            $maildata['link'] = "https://hazir.unitedsoftservices.com/admin/forgot_password/?tk=".$token;
            $maildata['subject'] = "Forgot Password Reset";
            $maildata['system_name'] = "System Name"/*$request->session()->get('SYSTEM_NAME')*/;
            $maildata['system_profile'] ="System Profile" /*$request->session()->get('SYSTEM_PROFILE')*/;
            $maildata['subject'] = "User Credentials";
            Mail::send('admin-views.auth.forgot_mail', $maildata, function ($messages) use ($maildata) {
                $messages->to($maildata['email']);
                // $messages->to("codeconqueror2@gmail.com");
                $messages->subject($maildata['subject']);
            });
            $res="Please Check Your Email To Reset Password";
            return response()->json([
                "message" => "success",
                "status" => 1,
                "response" => $res
            ]);
        }
        
        
        }else {
            return response()->json([
                "message" => "User Does Not Exist For This Email",
                "status" => 0,
                "response" => "Email Does Not Exist"
            ]);
        }
    }
    
}
