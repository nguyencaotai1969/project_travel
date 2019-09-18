
<link rel="stylesheet" type="text/css" href="{{asset('css/login/login.css')}}">	
<div class="login-wrap">

	  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
	<div class="login-html">
				<a href="{{asset('trangchu')}}" title=""><i class="fas fa-home"></i></a>
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Đăng Nhập</label>
		<input id="tab-2" type="radio" name="tab" class="for-pwd"><label for="tab-2" class="tab">Đăng Kí</label>
		<div class="login-form">
			<form method="" action="">
				<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Tên Tài Khoản</label>
					<input id="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Mật Khẩu</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<input type="submit" class="button" value="Login">
				</div>
				<div class="hr"></div>
			</div>
			</form>
			<form method="" action="">
				<div class="for-pwd-htm">
				<div class="group">
					<label for="user" class="label">Tên Tài Khoản</label>
					<input id="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="user" class="label">Tên Tài Khoản</label>
					<input id="user" type="email" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Mật Khẩu</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">Nhập Lại Mật Khẩu</label>
					<input id="pass" type="password" class="input" data-type="password">
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



