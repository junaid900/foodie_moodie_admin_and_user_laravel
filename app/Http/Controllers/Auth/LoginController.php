<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Redirect;
use Laravel\Socialite\Facades\Socialite;
use Session;
use DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;
use App\Mail\ResetPasswordMail;
use Toastr;


class LoginController extends Controller
{
     public function reset(Request $request)
    {
    //    return $request;   
        $request->validate([
            'password'=>'required|min:6|confirmed',
            'token'=>'required|exists:password_resets,token',
            'email' => 'required|email|exists:users,email',
        ]);
        $token= DB::table('password_resets')->where('token',$request->token)->first();
       if(!blank($token))
       {
            $user = User::where('email', $request->email)->first();
           if($token->email != $request->email)
           {
               return back()->with('fail','something went wrong with your email');
           }
           $user->update(['password' => bcrypt($request->password)]);
           return redirect()->route('user.login')->with('success','password updated successfuly');

       }
       return redirect()->back()->with('fail','something went wrong.');

        if ($user) {
        }
    }
    public function showResetForm($token)
    {
        $email=DB::table('password_resets')->where('token',$token)->first();
        return view('Auth.reset-password',compact('email')); 
    }
    public function forgot()
    {
       return view('Auth.forgot-password'); 
    }
    public function sendForgotLink(Request $request)
    {
        
        $request->validate([
            'email' => 'required|email|exists:users,email',
            ]);
        // return $request;
        $token = Str::random(30);

        $user=User::where('email',$request->email)->first();
        DB::table('password_resets')->insert([
            'email' => $user->email,
            'token' => $token,
            'created_at' => now(),
        ]);
        Mail::to($user->email)->send(new ResetPasswordMail($token));
        return back()->with('success','mail sent to your email');
    }
    public function login(Request $request)
    {
        if ($request->session()->get('loginId')) {
            return view('home.index');
        }
        return view('Auth.login');
    }

    public function user_login(Request $request)
    {

        $request->validate([

            'email' => 'required|email',
            'password' => 'required|min:5|max:9'
        ]);

        $user = User::Where('email', '=', $request->email)->first();

        if ($user) {
            if (Hash::check($request->password, $user->password)) {
                Auth()->login($user);
                $token = auth()->user()->createToken('RestaurantCustomerAuth')->accessToken;
                $request->session()->put(['loginId' => $user->id, 'token' => $token]);
                // return ;
                return redirect('/user')->with('toastrMessageSuccess', 'Logged in successfully');
            } else {
                return back()->with('fail', 'Password not matched');
            }
        } else {

            return back()->withErrors([
                'email' => 'Invalid credentials',
            ]);
        }
    }
    public function google_login()
    {
        return Socialite::driver('google')->stateless()->redirect();
        //return Socialite::driver('google')->redirect();
        /*
        // Google API Client ID and Secret
        $client_id = '95185580328-386ktm9u1qu2agnl67euu141u2uumrr8.apps.googleusercontent.com';
        $client_secret = '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';
        
        // Define the redirect URI
        $redirect_uri = 'https://foodie.junaidali.tk/user/google_callback'; // Replace with your actual redirect URI
        
        // Google OAuth 2.0 endpoints
        $authorization_endpoint = 'https://accounts.google.com/o/oauth2/auth';
        $token_endpoint = 'https://accounts.google.com/o/oauth2/token';
        
        // Step 1: Redirect the user to Google's OAuth 2.0 authorization endpoint
        $authorization_url = "$authorization_endpoint?client_id=$client_id&redirect_uri=$redirect_uri&response_type=code&scope=email profile";
        return Redirect::to($authorization_url);
    */
    }
    public function google_callback()
    {
        // $user = Socialite::driver('google')->user();
        $user_data = Socialite::driver('google')->stateless()->user();



        $user = User::Where('email', '=', $user_data->email)->first();

        if ($user) {
            Auth()->loginUsingId($user->id);
            // if (Hash::check($request->password, $user->password)) {

            // return Session()->all();

            $token = auth()->user()->createToken('RestaurantCustomerAuth')->accessToken;
            session()->put(['loginId' => $user->id, 'token' => $token]);
            // return ;
            return redirect('/user')->with('toastrMessageSuccess', 'Logged in successfully');
            // } else {
            //     return back()->with('fail', 'password not matched');
            //    }
        } else {
            // return $user_data->email;
            $new_user = new User();

            $exploreArr = explode('@', $user_data->email);
            $new_user->f_name = $exploreArr[0];
            $new_user->email = $user_data->email;
            $new_user->password = Hash::make("1234!@#$");

            $new_user->save();
            if ($new_user) {
                Auth()->loginUsingId($new_user->id);
                $token = auth()->user()->createToken('RestaurantCustomerAuth')->accessToken;
                session()->put(['loginId' => $new_user->id, 'token' => $token]);
            }
            return redirect('/user/profile');
            return back()->withErrors([
                'email' => 'Invalid credentials',
            ]);
        }

        return redirect('/home');
        /*
        // Google API Client ID and Secret
        $client_id = '95185580328-386ktm9u1qu2agnl67euu141u2uumrr8.apps.googleusercontent.com';
        $client_secret = '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';
        
        // Define the redirect URI (must match the one used in google_login.php)
        $redirect_uri = 'https://foodie.junaidali.tk/user/google_callback'; // Replace with your actual redirect URI
        
        // Step 2: Receive the authorization code from Google
        if (isset($_GET['code'])) {
           
            $authorization_code = $_GET['code'];
            
            // Step 3: Exchange the authorization code for an access token
            $token_url = 'https://accounts.google.com/o/oauth2/token';
            $token_data = array(
                'code' => $authorization_code,
                'client_id' => $client_id,
                'client_secret' => $client_secret,
                'redirect_uri' => $redirect_uri,
                'grant_type' => 'authorization_code'
            );
        
            
            
            $token_options = array(
                'http' => array(
                    'header' => "Content-type: application/x-www-form-urlencoded\r\n",
                    'method' => 'POST',
                    'content' => http_build_query($token_data)
                )
            );
            
            
        
            $token_context = stream_context_create($token_options);
            
            $token_response = file_get_contents($token_url, false, $token_context);
          
            $token_data = json_decode($token_response, true);
             print_r($token_data);
            exit;
            // Step 4: Use the access token to fetch user data from Google
            if (isset($token_data['access_token'])) {
                $user_info_url = 'https://www.googleapis.com/oauth2/v1/userinfo?access_token=' . $token_data['access_token'];
                $user_info = file_get_contents($user_info_url);
                echo $user_info;
                //$user_data = json_decode($user_info, true);
                
        //Array ( [id] => 108792899312515410280 [email] => moeedhussain836@gmail.com [verified_email] => 1 [name] => moeed hussain [given_name] => moeed [family_name] => hussain [picture] => https://lh3.googleusercontent.com/a/ACg8ocITZKcYrrz6jCtIjSZroiR7FatAcW86mOLvcpJLwDV9=s96-c [locale] => en ) Welcome, moeed hussain!Email: moeedhussain836@gmail.com
                // Display user information
                //echo 'Welcome, ' . $user_data['name'] . '!<br>';
               // echo 'Email: ' . $user_data['email'];
                exit;
            
        } */
    }
    public function logout(Request $request)
    {
        if (Session::has('loginId')) {
            Session::pull('loginId');
            Auth()->logout();
            return redirect('user/login')->with('toastrMessageSuccess', 'Logged out successfully');
        }
    }
}