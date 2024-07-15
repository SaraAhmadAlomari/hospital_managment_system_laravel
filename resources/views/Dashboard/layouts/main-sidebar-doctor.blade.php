<!-- main-sidebar -->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar sidebar-scroll">
    <div class="main-sidebar-header active">
        <a class="desktop-logo logo-light active" href="{{ url('/' . $page='index') }}"><img src="{{URL::asset('Dashboard/img/brand/logo.png')}}" class="main-logo" alt="logo"></a>
        <a class="desktop-logo logo-dark active" href="{{ url('/' . $page='index') }}"><img src="{{URL::asset('Dashboard/img/brand/logo-white.png')}}" class="main-logo dark-theme" alt="logo"></a>
        <a class="logo-icon mobile-logo icon-light active" href="{{ url('/' . $page='index') }}"><img src="{{URL::asset('Dashboard/img/brand/favicon.png')}}" class="logo-icon" alt="logo"></a>
        <a class="logo-icon mobile-logo icon-dark active" href="{{ url('/' . $page='index') }}"><img src="{{URL::asset('Dashboard/img/brand/favicon-white.png')}}" class="logo-icon dark-theme" alt="logo"></a>
    </div>

    {{-- @if(\Auth::guard('admin')->check())
        @include('Dashboard.layouts.main-sidebar.admin-sidebar-main')
    @endif

    @if(\Auth::guard('doctor')->check())
        @include('Dashboard.layouts.main-sidebar.doctor-sidebar-main')
    @endif

    @if(\Auth::guard('ray_employee')->check())
        @include('Dashboard.layouts.main-sidebar.ray_employee-sidebar-main')
    @endif

    @if(\Auth::guard('laboratorie_employee')->check())
        @include('Dashboard.layouts.main-sidebar.laboratorie_employee-sidebar-main')
    @endif

    @if(\Auth::guard('patient')->check())
        @include('Dashboard.layouts.main-sidebar.patient-sidebar-main')
    @endif --}}

<div class="main-sidemenu">
				<div class="app-sidebar__user clearfix">
					<div class="dropdown user-pro-body">
						<div class="">
							<img alt="user-img" class="avatar avatar-xl brround" src="{{URL::asset('Dashboard/img/faces/6.jpg')}}"><span class="avatar-status profile-status bg-green"></span>
						</div>
						<div class="user-info">
							<h4 class="font-weight-semibold mt-3 mb-0">{{Auth::user()->name}}</h4>
							<span class="mb-0 text-muted">{{Auth::user()->email}}</span>
						</div>
					</div>
				</div>
				<ul class="side-menu">


					<li class="slide">
						<a class="side-menu__item" data-toggle="slide" href="{{ url('/' . $page='#') }}"><svg xmlns="http://www.w3.org/2000/svg" class="side-menu__icon" viewBox="0 0 24 24"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M13 4H6v16h12V9h-5V4zm3 14H8v-2h8v2zm0-6v2H8v-2h8z" opacity=".3"/><path d="M8 16h8v2H8zm0-4h8v2H8zm6-10H6c-1.1 0-2 .9-2 2v16c0 1.1.89 2 1.99 2H18c1.1 0 2-.9 2-2V8l-6-6zm4 18H6V4h7v5h5v11z"/></svg><span class="side-menu__label">{{trans('Dashboard/main-sidebar_trans.invoices')}}</span><i class="angle fe fe-chevron-down"></i></a>
						<ul class="slide-menu">
							<li><a class="slide-item" href="{{route('invoices.index')}}">{{trans('Dashboard/main-sidebar_trans.invoices_list')}}</a></li>
							<li><a class="slide-item" href="{{route('completedInvoices')}}">{{trans('Dashboard/main-sidebar_trans.completed_invoices')}}</a></li>
							<li><a class="slide-item" href="{{route('reviewInvoices')}}">{{trans('Dashboard/main-sidebar_trans.review_invoices')}}</a></li>

						</ul>
					</li>
					<li class="slide">
						<a class="side-menu__item" data-toggle="slide" href="{{ url('/' . $page='#') }}"><svg xmlns="http://www.w3.org/2000/svg" class="side-menu__icon" viewBox="0 0 24 24" ><path d="M0 0h24v24H0V0z" fill="none"/><path d="M10.9 19.91c.36.05.72.09 1.1.09 2.18 0 4.16-.88 5.61-2.3L14.89 13l-3.99 6.91zm-1.04-.21l2.71-4.7H4.59c.93 2.28 2.87 4.03 5.27 4.7zM8.54 12L5.7 7.09C4.64 8.45 4 10.15 4 12c0 .69.1 1.36.26 2h5.43l-1.15-2zm9.76 4.91C19.36 15.55 20 13.85 20 12c0-.69-.1-1.36-.26-2h-5.43l3.99 6.91zM13.73 9h5.68c-.93-2.28-2.88-4.04-5.28-4.7L11.42 9h2.31zm-3.46 0l2.83-4.92C12.74 4.03 12.37 4 12 4c-2.18 0-4.16.88-5.6 2.3L9.12 11l1.15-2z" opacity=".3"/><path d="M12 22c5.52 0 10-4.48 10-10 0-4.75-3.31-8.72-7.75-9.74l-.08-.04-.01.02C13.46 2.09 12.74 2 12 2 6.48 2 2 6.48 2 12s4.48 10 10 10zm0-2c-.38 0-.74-.04-1.1-.09L14.89 13l2.72 4.7C16.16 19.12 14.18 20 12 20zm8-8c0 1.85-.64 3.55-1.7 4.91l-4-6.91h5.43c.17.64.27 1.31.27 2zm-.59-3h-7.99l2.71-4.7c2.4.66 4.35 2.42 5.28 4.7zM12 4c.37 0 .74.03 1.1.08L10.27 9l-1.15 2L6.4 6.3C7.84 4.88 9.82 4 12 4zm-8 8c0-1.85.64-3.55 1.7-4.91L8.54 12l1.15 2H4.26C4.1 13.36 4 12.69 4 12zm6.27 3h2.3l-2.71 4.7c-2.4-.67-4.35-2.42-5.28-4.7h5.69z"/></svg><span class="side-menu__label">Utilities</span><i class="angle fe fe-chevron-down"></i></a>
						<ul class="slide-menu">
							<li><a class="slide-item" href="{{ url('/' . $page='background') }}">Background</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='border') }}">Border</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='display') }}">Display</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='flex') }}">Flex</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='height') }}">Height</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='margin') }}">Margin</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='padding') }}">Padding</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='position') }}">Position</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='width') }}">Width</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='extras') }}">Extras</a></li>
						</ul>
					</li>
					<li class="slide">
						<a class="side-menu__item" data-toggle="slide" href="{{ url('/' . $page='#') }}"><svg xmlns="http://www.w3.org/2000/svg" class="side-menu__icon" viewBox="0 0 24 24"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M6 20h12V10H6v10zm6-7c1.1 0 2 .9 2 2s-.9 2-2 2-2-.9-2-2 .9-2 2-2z" opacity=".3"/><path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zM9 6c0-1.66 1.34-3 3-3s3 1.34 3 3v2H9V6zm9 14H6V10h12v10zm-6-3c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2z"/></svg><span class="side-menu__label">Custom Pages</span><i class="angle fe fe-chevron-down"></i></a>
						<ul class="slide-menu">
							<li><a class="slide-item" href="{{ url('/' . $page='signin') }}">Sign In</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='signup') }}">Sign Up</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='forgot') }}">Forgot Password</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='reset') }}">Reset Password</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='lockscreen') }}">Lockscreen</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='underconstruction') }}">UnderConstruction</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='404') }}">404 Error</a></li>
							<li><a class="slide-item" href="{{ url('/' . $page='500') }}">500 Error</a></li>
						</ul>
					</li>
					<li class="slide ">
						<a class="side-menu__item" data-toggle="slide" href="{{ url('/' . $page='#') }}"><svg xmlns="http://www.w3.org/2000/svg" class="side-menu__icon" viewBox="0 0 24 24" ><path d="M0 0h24v24H0V0z" fill="none"/><path d="M5 9h14V5H5v4zm2-3.5c.83 0 1.5.67 1.5 1.5S7.83 8.5 7 8.5 5.5 7.83 5.5 7 6.17 5.5 7 5.5zM5 19h14v-4H5v4zm2-3.5c.83 0 1.5.67 1.5 1.5s-.67 1.5-1.5 1.5-1.5-.67-1.5-1.5.67-1.5 1.5-1.5z" opacity=".3"/><path d="M20 13H4c-.55 0-1 .45-1 1v6c0 .55.45 1 1 1h16c.55 0 1-.45 1-1v-6c0-.55-.45-1-1-1zm-1 6H5v-4h14v4zm-12-.5c.83 0 1.5-.67 1.5-1.5s-.67-1.5-1.5-1.5-1.5.67-1.5 1.5.67 1.5 1.5 1.5zM20 3H4c-.55 0-1 .45-1 1v6c0 .55.45 1 1 1h16c.55 0 1-.45 1-1V4c0-.55-.45-1-1-1zm-1 6H5V5h14v4zM7 8.5c.83 0 1.5-.67 1.5-1.5S7.83 5.5 7 5.5 5.5 6.17 5.5 7 6.17 8.5 7 8.5z"/></svg><span class="side-menu__label">Submenus</span><i class="angle fe fe-chevron-down"></i></a>
						<ul class="slide-menu">
							<li class="sub-slide">
								<a class="sub-side-menu__item" data-toggle="sub-slide" href="{{ url('/' . $page='#') }}"><span class="sub-side-menu__label">Level1</span><i class="sub-angle fe fe-chevron-down"></i></a>
								<ul class="sub-slide-menu">
									<li><a class="sub-slide-item" href="{{ url('/' . $page='#') }}">Level01</a></li>
									<li><a class="sub-slide-item" href="{{ url('/' . $page='#') }}">Level02</a></li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>
			</div>

</aside>
<!-- main-sidebar -->
