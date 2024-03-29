<!DOCTYPE html>
<html lang="en">

<head>

    <title>Foodie Moodie</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicons-->
    <link rel="shortcut icon" href="{{ asset('public/home_assets/img/logo.png')}}" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="{{ asset('public/home_assets/img/apple-touch-icon-57x57-precomposed.png')}}">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="{{ asset('public/home_assets/img/apple-touch-icon-72x72-precomposed.png')}}">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="{{ asset('public/home_assets/img/apple-touch-icon-114x114-precomposed.png')}}">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="{{ asset('public/home_assets/img/apple-touch-icon-144x144-precomposed.png')}}">

    <!-- GOOGLE WEB FONT -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous">
    <link rel="preload" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap" as="fetch" crossorigin="anonymous">
    <script type="text/javascript">
    !function(e,n,t){"use strict";var o="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap",r="__3perf_googleFonts_c2536";function c(e){(n.head||n.body).appendChild(e)}function a(){var e=n.createElement("link");e.href=o,e.rel="stylesheet",c(e)}function f(e){if(!n.getElementById(r)){var t=n.createElement("style");t.id=r,c(t)}n.getElementById(r).innerHTML=e}e.FontFace&&e.FontFace.prototype.hasOwnProperty("display")?(t[r]&&f(t[r]),fetch(o).then(function(e){return e.text()}).then(function(e){return e.replace(/@font-face {/g,"@font-face{font-display:swap;")}).then(function(e){return t[r]=e}).then(f).catch(a)):a()}(window,document,localStorage);
    </script>

    <!-- BASE CSS -->
    <link href="{{ asset('public/home_assets/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{ asset('public/home_assets/css/style.css')}}" rel="stylesheet">

    <!-- SPECIFIC CSS -->
    <link href="{{ asset('public/home_assets/css/order-sign_up.css')}}" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="{{ asset('public/home_assets/custom.css')}}" rel="stylesheet">

</head>

<body id="register_bg" >
	<div id="register">
		<aside>
			<figure>
				<a href="{{route('user.home')}}"><img src="{{ asset('public/home_assets/img/logo.png')}}" width="140" height="60" alt=""></a>
			</figure>
		
            <!--<div class="divider"><span>Or</span></div>-->
			<form autocomplete="off" action="{{route('user.send-email')}}" method="POST">
                @csrf
				@if(Session::has('success'))
				<div class="alert alert-success">{{Session::get('success')}}</div>
                @endif

                @if(Session::has('fail'))
                <div class="alert alert-danger">{{Session::get('fail')}}</div>
                @endif

				<div class="form-group">
					<input class="form-control" type="email" placeholder="Email" name="email" value="{{old('email')}}">
					<span class="text-danger">@error('email') {{$message}} @enderror</span>
					<i class="icon_mail_alt"></i>
				</div>
			
			
				<button class="btn_1 gradient full-width" type="submitt" id="loginButton">Send a link!</button>

				{{-- <a href="login.html#0" class="btn_1 gradient full-width">Login Now!</a> --}}
			</form>
			<div class="copy">&copy; 2023 Foodie Moodie</div>
		</aside>
	</div>
	<!-- /login -->

	<!-- COMMON SCRIPTS -->
    <script src="{{ asset('public/home_assets/js/common_scripts.min.js')}}"></script>
    <script src="{{ asset('public/home_assets/js/common_func.js')}}"></script>
    <script src="{{ asset('public/home_assets/validate.js')}}"></script>
  <script>
        document.addEventListener("DOMContentLoaded", function() {
            var registerButton = document.getElementById("loginButton");
            var form = document.querySelector("form");

            registerButton.addEventListener("click", function() {
                form.submit();
            });
        });
    </script>
</body>
</html>
