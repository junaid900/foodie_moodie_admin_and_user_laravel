<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
namespace App\Http\Controllers\Auth;
use GuzzleHttp\Client;


class GoogleController extends Controller
{
    public function login()
    {
        return view('auth.google-login');
    }
    public function redirectToGoogle()
    {
        $query = http_build_query([
            'client_id' => env('GOOGLE_CLIENT_ID'),
            'redirect_uri' => env('GOOGLE_REDIRECT_URL'),
            'response_type' => 'code',
            'scope' => 'openid profile email',
        ]);

        return redirect('https://accounts.google.com/o/oauth2/auth?' . $query);
    }
    public function handleGoogleCallback(Request $request)
    {
        $client = new Client();

        $response = $client->post('https://oauth2.googleapis.com/token', [
            'form_params' => [
                'code' => $request->input('code'),
                'client_id' => env('GOOGLE_CLIENT_ID'),
                'client_secret' => env('GOOGLE_CLIENT_SECRET'),
                'redirect_uri' => env('GOOGLE_REDIRECT_URL'),
                'grant_type' => 'authorization_code',
            ],
        ]);

        $accessToken = json_decode((string) $response->getBody(), true)['access_token'];

        $userResponse = $client->get('https://www.googleapis.com/oauth2/v1/userinfo', [
            'headers' => [
                'Authorization' => 'Bearer ' . $accessToken,
            ],
        ]);

        $user = json_decode((string) $userResponse->getBody(), true);

        // Now you can handle the user data. 
        // $user['id'], $user['name'], $user['email'] can be used to retrieve user details.

        Auth::loginUsingId($user['id']);

        return redirect('/home'); // Redirect to the desired page after successful login
    }
}
