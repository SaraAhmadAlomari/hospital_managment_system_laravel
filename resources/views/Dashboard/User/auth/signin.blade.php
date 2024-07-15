@extends('Dashboard.layouts.master2')
@section('css')
    <style>
        .loginform{
            display:none;
        }
    </style>
<link href="{{URL::asset('Dashboard/plugins/sidemenu-responsive-tabs/css/sidemenu-responsive-tabs.css')}}" rel="stylesheet">
@endsection
@section('content')
		<div class="container-fluid">
			<div class="row no-gutter">
				<!-- The image half -->
				<div class="col-md-6 col-lg-6 col-xl-7 d-none d-md-flex bg-white">
					<div class="row wd-100p mx-auto text-center">
						<div class="col-md-12 col-lg-12 col-xl-12 my-auto mx-auto wd-100p">
							<img src="{{URL::asset('Dashboard/img/media/login.png')}}" class="my-auto cover" alt="logo">
						</div>
					</div>
				</div>
				<!-- The content half -->
				<div class="col-md-6 col-lg-6 col-xl-5 bg-white">
					<div class="login d-flex align-items-center py-2">
						<!-- Demo content-->
						<div class="container p-0">
							<div class="row">
								<div class="col-md-10 col-lg-10 col-xl-9 mx-auto">
									<div class="card-sigin">
										<div class="card-sigin">
											<div class="main-signup-header">
												<h2>{{trans('Dashboard/login_trans.Welcome')}}</h2>
                                                @if ($errors->any())
                                                    <div class="alert alert-danger">
                                                        <ul>
                                                            @foreach ($errors->all() as $error)
                                                                <li>{{ $error }}</li>
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                @endif
                                                <div class="form-group">
                                                    <label>{{trans('Dashboard/login_trans.Select_Enter')}}</label>
                                                    <select class="form-control" id="sectionChooser" aria-label="Default select example">
                                                    <option selected>{{trans('Dashboard/login_trans.Choose_list')}}</option>
                                                    <option value="admin">{{trans('Dashboard/login_trans.admin')}}</option>
                                                    <option value="doctor">{{trans('Dashboard/login_trans.doctor')}}</option>
                                                    <option value="ray_employee">{{trans('Dashboard/login_trans.ray_employee')}}</option>
                                                    <option value="laboratorie_employee">{{trans('Dashboard/login_trans.laboratorie_employee')}}</option>
                                                    <option value="patient">{{trans('Dashboard/login_trans.patient')}}</option>
                                                    </select>
                                                </div>
                                                {{-- admin form --}}
                                                <div class="loginform" id="admin">
                                                    <h5 class="font-weight-semibold mb-4">{{trans('Dashboard/login_trans.admin')}}</h5>
                                                    <form method="POST"action="{{ route('login.admin') }}">
                                                        @csrf
                                                        <div class="form-group">
                                                            <label>{{trans('Dashboard/login_trans.email')}}</label> <input class="form-control" name="email" :value="old('email')" required autofocus type="email">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>{{trans('Dashboard/login_trans.password')}}</label> <input class="form-control" name="password" required type="password">
                                                        </div><button class="btn btn-main-primary btn-block">{{trans('Dashboard/login_trans.sign_in')}}</button>

                                                    </form>

                                                </div>
                                                {{-- end admin form --}}

                                                 {{-- doctor form --}}
                                                <div class="loginform" id="doctor">
                                                    <h5 class="font-weight-semibold mb-4">{{trans('Dashboard/login_trans.doctor')}}</h5>
                                                    <form method="POST"action="{{ route('login.doctor') }}">
                                                        @csrf
                                                        <div class="form-group">
                                                            <label>{{trans('Dashboard/login_trans.email')}}</label> <input class="form-control" name="email" :value="old('email')" required autofocus type="email">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>{{trans('Dashboard/login_trans.password')}}</label> <input class="form-control" name="password" required type="password">
                                                        </div><button class="btn btn-main-primary btn-block">{{trans('Dashboard/login_trans.sign_in')}}</button>

                                                    </form>

                                                </div>
                                                {{-- end doctor form --}}

                                                    {{-- ray employee form --}}
                                                <div class="loginform" id="ray_employee">
                                                    <h5 class="font-weight-semibold mb-4">{{trans('Dashboard/login_trans.ray_employee')}}</h5>
                                                    <form method="POST"action="{{ route('login.ray_employee') }}">
                                                        @csrf
                                                        <div class="form-group">
                                                            <label>{{trans('Dashboard/login_trans.email')}}</label> <input class="form-control" name="email" :value="old('email')" required autofocus type="email">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>{{trans('Dashboard/login_trans.password')}}</label> <input class="form-control" name="password" required type="password">
                                                        </div><button class="btn btn-main-primary btn-block">{{trans('Dashboard/login_trans.sign_in')}}</button>

                                                    </form>

                                                </div>
                                                {{-- end ray employee form --}}

                                                    {{-- laboratorie_employee form --}}
                                                <div class="loginform" id="laboratorie_employee">
                                                    <h5 class="font-weight-semibold mb-4">{{trans('Dashboard/login_trans.laboratorie_employee')}}</h5>
                                                    <form method="POST"action="{{ route('login.laboratorie_employee') }}">
                                                        @csrf
                                                        <div class="form-group">
                                                            <label>{{trans('Dashboard/login_trans.email')}}</label> <input class="form-control" name="email" :value="old('email')" required autofocus type="email">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>{{trans('Dashboard/login_trans.password')}}</label> <input class="form-control" name="password" required type="password">
                                                        </div><button class="btn btn-main-primary btn-block">{{trans('Dashboard/login_trans.sign_in')}}</button>

                                                    </form>

                                                </div>
                                                {{-- end laboratorie_employee form --}}

                                                    {{-- patient form --}}
                                                <div class="loginform" id="patient">
                                                    <h5 class="font-weight-semibold mb-4">{{trans('Dashboard/login_trans.patient')}}</h5>
                                                    <form method="POST"action="{{ route('login.patient') }}">
                                                        @csrf
                                                        <div class="form-group">
                                                            <label>{{trans('Dashboard/login_trans.email')}}</label> <input class="form-control" name="email" :value="old('email')" required autofocus type="email">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>{{trans('Dashboard/login_trans.password')}}</label> <input class="form-control" name="password" required type="password">
                                                        </div><button class="btn btn-main-primary btn-block">{{trans('Dashboard/login_trans.sign_in')}}</button>

                                                    </form>

                                                </div>
                                                {{-- end patient form --}}
											</div>
										</div>
									</div>
								</div>
							</div>
						</div><!-- End -->
					</div>
				</div><!-- End -->
			</div>
		</div>
@endsection
@section('js')
<script>
    $('#sectionChooser').change(function(){
            var ID=$(this).val();
            $('.loginform').each(function(){
                ID===$(this).attr('id') ? $(this).show() : $(this).hide();
            });
    });
</script>
@endsection
