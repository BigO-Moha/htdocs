@php $permissions = permission_list(); @endphp

@if( has_feature( 'contacts_limit' ) )
<li>
	<a href="javascript: void(0);"><i class="ti-id-badge"></i><span>macaamiisha</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('contacts.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('contacts') }}">liiska macaamiisha</a></li>
		@endif

		@if (in_array('contacts.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('contacts/create') }}">abuur macaamil cusub</a></li>
		@endif

		@if (in_array('contact_groups.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('contact_groups') }}">kooxaha macaamisha</a></li>
	    @endif
	</ul>
</li>
@endif

<!-- @if( has_feature('project_management_module') )
	@if (in_array('leads.index', $permissions))
	<li>
	    <a href="{{ route('leads.index') }}"><i class="fas fa-tty"></i><span>{{ _lang('Leads') }}</span></a>
	</li>
	@endif

	@if (in_array('projects.index', $permissions))
	<li>
		<a href="{{ route('projects.index') }}"><i class="ti-briefcase"></i><span>{{ _lang('Projects') }}</span></a>
	</li>
	@endif

	@if (in_array('tasks.index', $permissions))
	<li>
		<a href="{{ route('tasks.index') }}"><i class="ti-check-box"></i><span>{{ _lang('Tasks') }}</span></a>
	</li>
	@endif
@endif -->

<li>
	<a href="javascript: void(0);"><i class="ti-shopping-cart"></i><span>badeecada</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('products.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('products/create') }}">abuur badeeco</a></li>
		@endif

		@if (in_array('products.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('products') }}">liiska badeecada</a></li>
	    @endif
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-agenda"></i><span>iskuxirka badeecada</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('services.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('services/create') }}">abuur iskuxir badeeco</a></li>
		@endif

		@if (in_array('services.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('services') }}">liiska iskuxirka badeecada</a></li>
	    @endif
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-truck"></i><span>iibiye</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('suppliers.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('suppliers/create') }}">abuur iibiye</a></li>
		@endif

		@if (in_array('suppliers.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('suppliers') }}">liiska iibiyayaasha</a></li>
	    @endif
	</ul>
</li>

@if( has_feature('inventory_module') )
<li>
	<a href="javascript: void(0);"><i class="ti-bag"></i><span>soo iibsasho</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('purchase_orders.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('purchase_orders') }}">liiska soo iibsashada</a></li>
		@endif

		@if (in_array('purchase_orders.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('purchase_orders/create') }}">soo iibso alaab cusub</a></li>
	    @endif
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-back-left"></i><span>celinta badeecada</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('purchase_returns',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('purchase_returns') }}">ku celi iibiye</a></li>
		@endif

		@if (in_array('sales_returns',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('sales_returns') }}">ka celi macaamiil</a></li>
	    @endif
	</ul>
</li>
@endif

<li>
	<a href="javascript: void(0);"><i class="ti-shopping-cart-full"></i><span>iibinta</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if( has_feature('invoice_limit') )
			@if (in_array('invoices.create',$permissions))
				<li class="nav-item"><a class="nav-link" href="{{ url('invoices/create') }}">abuur boono</a></li>
			@endif

			@if (in_array('invoices.index',$permissions))
				<li class="nav-item"><a class="nav-link" href="{{ url('invoices') }}">liiska boonooyinka</a></li>
			@endif
		@endif

		@if( has_feature('quotation_limit') )
			@if (in_array('quotations.create',$permissions))
				<li class="nav-item"><a class="nav-link" href="{{ url('quotations/create') }}">abuur xusuus qor boono</a></li>
			@endif

			@if (in_array('quotations.index',$permissions))
				<li class="nav-item"><a class="nav-link" href="{{ url('quotations') }}">liiska xusuus qorka boonada</a></li>
		    @endif
	    @endif
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-credit-card"></i><span>xisaabaadka</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('accounts.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('accounts') }}">liiska xisaabadka</a></li>
		@endif

	    @if (in_array('accounts.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('accounts/create') }}">abuur xisaab</a></li>
	    @endif
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-receipt"></i><span>kala wareejin</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('income.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('income') }}">daqali iyo lacag dhigis</a></li>
		@endif

		@if (in_array('expense.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('expense') }}">qarash</a></li>
		@endif

		@if (in_array('transfer.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('transfer/create') }}">wareejin xisaabeed</a></li>
		@endif

		@if (in_array('income.income_calendar',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('income/calendar') }}">daqli taariikheed</a></li>
		@endif

	    @if (in_array('expense.expense_calendar',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('expense/calendar') }}">qarash taariikheed</a></li>
	    @endif
	</ul>
</li>

@if( has_feature('recurring_transaction') )
<li>
	<a href="javascript: void(0);"><i class="ti-wallet"></i><span>wareejimaha joogtada ah</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('repeating_income.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('repeating_income/create') }}">abuur wareejin joogteed</a></li>
		@endif

		@if (in_array('repeating_income.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('repeating_income') }}">liiska daqliga joogtada</a></li>
		@endif

		@if (in_array('repeating_expense.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('repeating_expense/create') }}">abuur qarash joogteed</a></li>
		@endif

		@if (in_array('repeating_expense.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('repeating_expense') }}">liiska qarashka joogtada ah</a></li>
	    @endif
	</ul>
</li>
@endif

@if(get_option('live_chat') == 'enabled' && has_feature('live_chat') )
	<li>
       <a href="{{ url('live_chat') }}"><i class="far fa-comment"></i><span>{{ _lang('Messenger') }}</span><span class="chat-notification {{ unread_message_count() > 0 ? 'show' : 'hidden' }}">{{ unread_message_count() }}</span></a>
	</li>
@endif

@if( has_feature('file_manager') )
	@if (in_array('file_manager.index',$permissions))
		<li>
			<a href="{{ url('file_manager') }}"><i class="ti-folder"></i><span>{{ _lang('File Manager') }}</span></a>
		</li>
	@endif
@endif

<li>
	<a href="javascript: void(0);"><i class="ti-bar-chart"></i><span>warbixin</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('reports.account_statement',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/account_statement') }}">dhaqdhaqaaqa xisaabaadka</a></li>
		@endif

		@if (in_array('reports.day_wise_income',$permissions))
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/day_wise_income') }}">dhaqdhaqaaq maalmeedka daqliga</a></li>
		@endif

		@if (in_array('reports.date_wise_income',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/date_wise_income') }}">dhaqdhaqaaq taariiqeedka daqliga</a></li>
		@endif

		@if (in_array('reports.day_wise_expense',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/day_wise_expense') }}">dhaqdhaqaaq maalmeedka qarashka</a></li>
		@endif

	    @if (in_array('reports.date_wise_expense',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/date_wise_expense') }}">dhaqdhaqaaq taariiqeedka qarashka</a></li>
		@endif

	    @if (in_array('reports.transfer_report',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/transfer_report') }}">xogta kala wareejinta</a></li>
		@endif

	    @if (in_array('reports.income_vs_expense',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/income_vs_expense') }}">farqiga daqliga iyo qarashaka</a></li>
		@endif

		@if (in_array('reports.report_by_payer',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/report_by_payer') }}">dhaqdhaqaaqa qarash bixinta macaamiilka</a></li>
		@endif

	    @if (in_array('reports.report_by_payee',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/report_by_payee') }}">dhaqdhaqaaqa qarash helida macaamiilka</a></li>
	    @endif
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-settings"></i><span>{{ _lang('Settings') }}</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('company.change_settings',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('company/general_settings') }}">{{ _lang('Company Settings') }}</a></li>
		@endif

	    @if (in_array('company_email_template.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('company_email_template') }}">{{ _lang('Email Template') }}</a></li>
		@endif

	    @if (in_array('chart_of_accounts.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('chart_of_accounts') }}">{{ _lang('Income & Expense Types') }}</a></li>
		@endif

		@if (in_array('payment_methods.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('payment_methods') }}">{{ _lang('Payment Methods') }}</a></li>
		@endif

		@if (in_array('product_units.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('product_units') }}">{{ _lang('Product Unit') }}</a></li>
		@endif

		@if (in_array('taxs.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('taxs') }}">{{ _lang('Tax Settings') }}</a></li>
	    @endif
	</ul>
</li>
