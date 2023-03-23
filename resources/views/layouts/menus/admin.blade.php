<li>
	<a href="javascript: void(0);"><i class="ti-user"></i><span>maamulka macaamiisha</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('users/type/user') }}">liiska shirkadaha</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('users/create') }}">abuur shirkad cusub</a></li>
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-gift"></i><span>xirmooyinka</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('packages') }}">liiska xirmooyinka</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('packages/create') }}">abuur xirmo cusub</a></li>
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-credit-card"></i><span>Lacagaha</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('offline_payment/create') }}">abuur lacag bixin</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('members/payment_history') }}">dhaqdhaqaaqa lacagaha</a></li>
	</ul>
</li>


<!-- <li>
	<a href="javascript: void(0);"><i class="ti-world"></i><span>{{ _lang('Languages') }}</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('languages') }}">{{ _lang('All Language') }}</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('languages/create') }}">{{ _lang('Add New') }}</a></li>
	</ul>
</li> -->

<!-- <li @if(Request::is('admin/email_subscribers')) class="mm-active" @endif>
    <a href="{{ url('admin/email_subscribers') }}"><i class="ti-email"></i><span>{{ _lang('Email Subscribers') }}</span></a>
</li> -->

<li>
	<a href="javascript: void(0);"><i class="ti-ruler-pencil"></i><span>xogta website ka</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('features') }}">qeybaha systemks </a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('faqs') }}">su'aalaha iyo jawaabaha</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('administration/theme_option') }}">qaabka website ka</a></li>
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-settings"></i><span>maamulka</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('administration/general_settings') }}">maamulka guud</a></li>
		<!-- <li class="nav-item"><a class="nav-link" href="{{ url('email_templates') }}">{{ _lang('Email Template') }}</a></li> -->
		<!-- <li class="nav-item"><a class="nav-link" href="{{ url('administration/currency_rates') }}">qarashak lacag kala bad</a></li> -->
		<li class="nav-item"><a class="nav-link" href="{{ url('administration/backup_database') }}">kaydinta xogta</a></li>
	</ul>
</li>
