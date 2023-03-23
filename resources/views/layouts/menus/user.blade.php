@if( has_feature( 'contacts_limit' ) )
<li>
	<a href="javascript: void(0);"><i class="ti-id-badge"></i><span>macaamiisha</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('contacts') }}">liiska macaamiisha</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('contacts/create') }}">abuur macmiil cusub</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('contact_groups') }}">kooxaha macaamiisha</a></li>
	</ul>
</li>
@endif

@if( has_feature('project_management_module') )
<!-- <li>
	<a href="{{ route('leads.index') }}"><i class="fas fa-tty"></i><span>{{ _lang('Leads') }}</span></a>
</li>

<li>
	<a href="{{ route('projects.index') }}"><i class="ti-briefcase"></i><span>{{ _lang('Projects') }}</span></a>
</li>

<li>
	<a href="{{ route('tasks.index') }}"><i class="ti-check-box"></i><span>{{ _lang('Tasks') }}</span></a>
</li> -->
@endif


<li>
	<a href="javascript: void(0);"><i class="ti-shopping-cart"></i><span>badeecada</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('products/create') }}">abuur badeeco</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('products') }}">liiska badeecada</a></li>
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-agenda"></i><span>isku xirka badeecada</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('services/create') }}">abuur isku xir</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('services') }}">liiska isku xirka</a></li>
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-truck"></i><span>iibiye</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('suppliers/create') }}">abuur iibiye</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('suppliers') }}">liiska iibiyayaahsa</a></li>
	</ul>
</li>

@if( has_feature('inventory_module') )
<li>
	<a href="javascript: void(0);"><i class="ti-bag"></i><span>soo iibso</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('purchase_orders') }}">liiska dalabyada</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('purchase_orders/create') }}">soo iibso alaab</a></li>
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-back-left"></i><span>alaab celin</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('purchase_returns') }}">u celi iibiye</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('sales_returns') }}">ka celi macmiil</a></li>
	</ul>
</li>
@endif


<li>
	<a href="javascript: void(0);"><i class="ti-shopping-cart-full"></i><span>iibinta</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if( has_feature('invoice_limit') )
			<li class="nav-item"><a class="nav-link" href="{{ url('invoices/create') }}">jar boono</a></li>
			<li class="nav-item"><a class="nav-link" href="{{ url('invoices') }}">liiska boonooyinka</a></li>
		@endif

		@if( has_feature('quotation_limit') )
			<li class="nav-item"><a class="nav-link" href="{{ url('quotations/create') }}">abuur iibin</a></li>
			<li class="nav-item"><a class="nav-link" href="{{ url('quotations') }}">liiska iibinta</a></li>
		@endif
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-credit-card"></i><span>xisaabaadka</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('accounts') }}">liiska akoonada</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('accounts/create') }}">ku dar account cusub</a></li>
	</ul>
</li>


<li>
	<a href="javascript: void(0);"><i class="ti-receipt"></i><span>kala wareejinta</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('income') }}">lacag dhigid/daqli</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('expense') }}">qarashaadka</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('transfer/create') }}">u wareeji akoon</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('income/calendar') }}">taariiqaha daqliga</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('expense/calendar') }}">taariiqaha qarashka</a></li>
	</ul>
</li>

@if( has_feature('recurring_transaction') )
<li>
	<a href="javascript: void(0);"><i class="ti-wallet"></i><span>wareejinta joogta ah</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('repeating_income/create') }}">abuur daqliga joogtada ah</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('repeating_income') }}">liiska daqliga joogtada ah</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('repeating_expense/create') }}">abuur qarashka joogtada ah</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('repeating_expense') }}">liiska qarashka joogtada ah</a></li>
	</ul>
</li>
@endif

@if(get_option('live_chat') == 'enabled' && has_feature('live_chat') )
	<li>
       <a href="{{ url('live_chat') }}"><i class="far fa-comment"></i><span>{{ _lang('Messenger') }}</span><span class="chat-notification {{ unread_message_count() > 0 ? 'show' : 'hidden' }}">{{ unread_message_count() }}</span></a>
	</li>
@endif

@if( has_feature('file_manager') )
<li>
	<a href="{{ url('file_manager') }}"><i class="ti-folder"></i><span>{{ _lang('File Manager') }}</span></a>
</li>
@endif

@if( has_feature('staff_limit') )
<li>
	<a href="javascript: void(0);"><i class="ti-user"></i><span>shaqaalaha</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('staffs') }}">liiska shaqaalaha</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('staffs/create') }}">abuur shaqaale cusub</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ route('roles.index') }}">awoodaha shaqaalaha</a></li>
	</ul>
</li>
@endif

<li>
	<a href="javascript: void(0);"><i class="ti-bar-chart"></i><span>{{ _lang('Reports') }}</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/account_statement') }}">dhaqdhaqaaqa akoonada</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/day_wise_income') }}">daqliga maalinlaha</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/date_wise_income') }}">daqli taarikheed</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/day_wise_expense') }}">qarash maalinle</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/date_wise_expense') }}">qarash taarikhle</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/transfer_report') }}">dhaqdhaqaaqa wareejineed</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/income_vs_expense') }}">farqiga qarashka iyo daqliga</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/report_by_payer') }}">dhaqdhaqaaqa bixinta macaamiilka</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/report_by_payee') }}">dhaqdhaqaaqa helida macaamiilka</a></li>
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-settings"></i><span>maamulka</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('company/general_settings') }}">maamulka shirkada</a></li>
		<!-- <li class="nav-item"><a class="nav-link" href="{{ url('company_email_template') }}"></a></li> -->
		<li class="nav-item"><a class="nav-link" href="{{ url('permission/control') }}">maamulka isticmaalka</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('chart_of_accounts') }}">noocyada qarshka iyo daqliga</a></li>
		@if( has_feature('project_management_module') )
			<!-- <li class="nav-item"><a class="nav-link" href="{{ url('company/crm_settings') }}">{{ _lang('CRM Settings') }}</a></li> -->
		@endif
		<li class="nav-item"><a class="nav-link" href="{{ url('payment_methods') }}">hababka lacag bixinta</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('product_units') }}">cabirka badeecada</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('taxs') }}">maamulka canshuurta</a></li>
	</ul>
</li>
