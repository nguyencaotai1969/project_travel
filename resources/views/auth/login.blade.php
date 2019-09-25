
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link REL="SHORTCUT ICON" HREF="{{asset('img/logo.png')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/login/login.css')}}">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="login-wrap">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    <div class="login-html">
        <a href="{{asset('trangchu')}}" data-toggle="tooltip" title="Về Trang Chủ"><i class="fas fa-home"></i></a>&nbsp;&nbsp;
        <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab cursor">Đăng
            Nhập</label>
        <input id="tab-2" type="radio" name="tab" class="for-pwd"><label for="tab-2" class="tab cursor">Đăng Kí</label>
        <div class="login-form">
                <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="sign-in-htm">
                            <div class="group">
                            <label for="user" class="label">Địa Chỉ Email</label>
                                <input id="user" type="email" class="input form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" placeholder="Email Của Bạn" required autofocus>
                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                            <div class="group">
                              <label for="pass" class="label">Mật Khẩu</label>
                                <input id="password" data-type="password" type="password" class="input form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" placeholder="Mật Khẩu" required>
                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        <div class="group">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                    <label class="form-check-label text-primary" for="remember">
                                        {{ __('Remember Me') }}
                                    </label>
                                </div>
                        </div>
                        <div class="group">
                                <button type="submit" class="button">
                                    {{ __('Login') }}
                                </button>

                                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('Forgot Your Password?') }}
                                    </a>
                                @endif
                        </div>
                </div>
                    </form>
            <form method="POST" action="{{ route('register') }}">
                  @csrf
                <div class="for-pwd-htm">
                    <div class="group">
                        <label for="user" class="label">Tên Tài Khoản</label>
                        <input id="user" type="text" class="input form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus placeholder="Tên Tài Khoản">

                                @if ($errors->has('name'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                    </div>
                    <div class="group">
                        <label for="user" class="label">Email</label>
                        <input id="email" type="email" class="input form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required  placeholder="Địa Chỉ Email Của Bạn">

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Mật Khẩu</label>

                                <input id="password" type="password" class="input form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required placeholder="Đặt Mật Khẩu">

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif

                    </div>
                    <div class="group">
                        <label for="pass" class="label">Nhập Lại Mật Khẩu</label>
                        <input id="password-confirm" type="password" class="input form-control" name="password_confirmation" placeholder="Nhập Lại Mật Khẩu" data-type="password" required>
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="Sing In">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<video id="video_background" preload="auto" autoplay="true" loop="loop" muted volume="0">
    <source src="{{asset('img/cauvang.mp4')}}" type="video/mp4"/>
</video>
<script src="{{asset('bootstrap/js/bootstrap.min.js')}}"></script>
</body>
</html>

