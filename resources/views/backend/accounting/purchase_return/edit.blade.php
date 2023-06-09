@extends('layouts.app')

@section('content')
<link href="{{ asset('public/backend/plugins/bootstrap-select/css/bootstrap-select.css') }}" rel="stylesheet">

<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<span class="d-none panel-title">{{ _lang('Update Purchase Return') }}</span>

			<div class="card-body">
				<form method="post" class="validate" autocomplete="off" action="{{ action('PurchaseReturnController@update', $id) }}" enctype="multipart/form-data">
					   
					{{ csrf_field()}}
					<input name="_method" type="hidden" value="PATCH">	

					<div class="row">
					
						<div class="col-md-4">
							<div class="form-group">
								<label class="control-label">{{ _lang('Return Date') }}</label>						
								<input type="text" class="form-control datepicker" name="return_date" value="{{ $purchase_return->return_date }}" readOnly="true" required>
							</div>
						</div>

						<div class="col-md-4">
							<div class="form-group">
							<a href="{{ route('suppliers.create') }}" data-reload="false" data-title="{{ _lang('Add Supplier') }}" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
							<label class="control-label">{{ _lang('Supplier') }}</label>						
							<select class="form-control select2-ajax" data-value="id" data-display="supplier_name" data-table="suppliers" data-where="1" name="supplier_id">
								<option value="">{{ _lang('Select One') }}</option>
								{{ create_option("suppliers","id","supplier_name",$purchase_return->supplier_id,array("company_id="=>company_id())) }}
							</select>	
							</div>
						</div>

						<div class="col-md-4">
							<div class="form-group">
								<a href="{{ route('accounts.create') }}" data-reload="false" data-title="{{ _lang('Create Account') }}" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
								<label class="control-label">{{ _lang('Credit Account') }}</label>						
								<select class="form-control select2-ajax" data-value="id" data-display="account_title" data-display2="account_currency" data-table="accounts" data-where="1"  name="account_id" id="account_id" required>
									<option value="">{{ _lang('Select One') }}</option>
									{{ create_option("accounts","id",array("account_title","account_currency"), $purchase_return->account_id, array("company_id="=>company_id())) }}
								</select>	
							</div>
						</div>
						
						<div class="col-md-4">
							<div class="form-group">
							  <a href="{{ route('chart_of_accounts.create') }}" data-reload="false" data-title="{{ _lang('Add Income/Expense Type') }}" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
							  <label class="control-label">{{ _lang('Deposit Category') }}</label>						
							  <select class="form-control select2-ajax" data-value="id" data-display="name" data-table="chart_of_accounts" data-where="3" name="chart_id" required>
								   <option value="">{{ _lang('Select One') }}</option>
								   {{ create_option("chart_of_accounts", "id", "name", $purchase_return->chart_id, array("type="=>"income","AND company_id="=>company_id())) }}
							  </select>	
							</div>
						</div>

						<div class="col-md-4">
							<div class="form-group">
							<a href="{{ route('payment_methods.create') }}" data-reload="false" data-title="{{ _lang('Add Payment Method') }}" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
							<label class="control-label">{{ _lang('Deposit Payment Method') }}</label>						
							<select class="form-control select2-ajax" data-value="id" data-display="name" data-table="payment_methods" data-where="1"  name="payment_method_id" required>
								<option value="">{{ _lang('Select One') }}</option>
								{{ create_option("payment_methods", "id", "name", $purchase_return->payment_method_id, array("company_id="=>company_id())) }}
							</select>
							</div>
						</div>

						<div class="col-md-4">
							<div class="form-group">
							<label class="control-label">{{ _lang('Attachemnt') }}</label>						
							<input type="file" class="form-control trickycode-file" data-value="{{ $purchase_return->attachemnt }}" name="attachemnt">
							</div>
						</div>

						<div class="col-md-8">
							<div class="form-group select-product-container">
							<a href="{{ route('products.create') }}" data-reload="false" data-title="{{ _lang('Add Product') }}" class="ajax-modal select2-add"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
							<label class="control-label">{{ _lang('Select Product') }}</label>						
							<select class="form-control select2-ajax" data-value="id" data-display="item_name" data-table="items" data-where="2" name="product" id="product">
								<option value="">{{ _lang('Select Product') }}</option>
							</select>
							</div>
						</div>

						@php $currency = currency(); @endphp
						@php $taxes = App\Tax::where("company_id",company_id())->get(); @endphp	

						<!--Order table -->
						<div class="col-md-12">
							<div class="table-responsive">
								<table id="order-table" class="table table-bordered">
									<thead>
										<tr>
											<th>{{ _lang('Name') }}</th>
											<th>{{ _lang('Description') }}</th>
											<th class="text-center wp-100">{{ _lang('Quantity') }}</th>
											<th class="text-right">{{ _lang('Unit Cost').' '.$currency }}</th>
											<th class="text-right wp-100">{{ _lang('Discount').' '.$currency }}</th>
											<th class="text-right">{{ _lang('Tax') }}</th>
											<th class="text-right">{{ _lang('Sub Total').' '.$currency }}</th>
											<th class="text-center">{{ _lang('Action') }}</th>
										</tr>
									</thead>
									<tbody>
										@foreach($purchase_return->purchase_return_items as $item)
											<tr id="product-{{ $item->product_id }}">
												<td>
													<b>{{ $item->item->item_name }}</b><br>
												</td>
												<td class="description"><input type="text" name="product_description[]" class="form-control input-description" value="{{ $item->description }}"></td>
												<td class="text-center quantity"><input type="number" name="quantity[]" min="1" class="form-control input-quantity text-center" value="{{ $item->quantity }}"></td>
												<td class="text-right unit-cost"><input type="text" name="unit_cost[]" class="form-control input-unit-cost text-right" value="{{ $item->unit_cost }}"></td>
												<td class="text-right discount"><input type="text" name="discount[]" class="form-control input-discount text-right" value="{{ $item->discount }}"></td>
												<td class="text-right tax">
													<select class="form-control auto-multiple-select selectpicker input-tax" name="tax[{{ $item->product_id }}][]" title="{{ _lang('Select TAX') }}" data-selected="{{ $item->taxes->pluck('tax_id') }}" multiple="true">
														@foreach($taxes as $tax)
															<option value="{{ $tax->id }}" data-tax-type="{{ $tax->type }}" data-tax-rate="{{ $tax->rate }}">{{ $tax->tax_name }} - {{ $tax->type =='percent' ? $tax->rate.' %' : $tax->rate }}</option>
														@endforeach
													</select>
												</td>
												<td class="text-right sub-total"><input type="text" name="sub_total[]" class="form-control input-sub-total text-right" value="{{ $item->sub_total }}" readonly></td>
												<td class="text-center">
													<button type="button" class="btn btn-danger btn-xs remove-product"><i class='fa fa-trash'></i></button>
												</td>
												<input type="hidden" name="product_id[]" value="{{ $item->product_id }}">
												<input type="hidden" name="product_tax[]" class="input-product-tax" value="{{ $item->tax_amount }}">
											</tr>
										@endforeach
									</tbody>
									<tfoot class="tfoot active">
										<tr>
											<th>{{ _lang('Total') }}</th>
											<th></th>
											<th class="text-center" id="total-qty">0</th>
											<th></th>
											<th class="text-right" id="total-discount">0.00</th>
											<th class="text-right" id="total-tax">0.00</th>
											<th class="text-right" id="total">0.00</th>
											<th class="text-center"></th>
											<input type="hidden" name="product_total" id="product_total" value="0">
											<input type="hidden" name="tax_total" id="tax_total" value="0">
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
						<!--End Order table -->


						<div class="col-md-12">
							<div class="form-group">
							<label class="control-label">{{ _lang('Note') }}</label>						
							<textarea class="form-control" name="note">{{ old('note') }}</textarea>
							</div>
						</div>

							
						<div class="col-md-12">
						  <div class="form-group">
								<button type="submit" class="btn btn-primary">{{ _lang('Update') }}</button>
						  </div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<select class="form-control d-none" id="tax-selector">
	@foreach($taxes as $tax)
		<option value="{{ $tax->id }}" data-tax-type="{{ $tax->type }}" data-tax-rate="{{ $tax->rate }}">{{ $tax->tax_name }} - {{ $tax->type =='percent' ? $tax->rate.' %' : $tax->rate }}</option>
	@endforeach
</select>

@endsection


@section('js-script')
<script src="{{ asset('public/backend/plugins/bootstrap-select/js/bootstrap-select.min.js') }}"></script>
<script src="{{ asset('public/backend/assets/js/purchase_return.js?v=1.2') }}"></script>
<script>
(function($) {
    "use strict";

    update_summary();
    
})(jQuery);	
</script>
@endsection


