@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
	<div class="card">
	<span class="panel-title d-none">{{ _lang('Add Product') }}</span>

	<div class="card-body">
	  <form method="post" class="validate" autocomplete="off" action="{{ url('products') }}" enctype="multipart/form-data">
		{{ csrf_field() }}
		    <div class="row">
				<div class="col-md-12">
				  <div class="form-group">
					<label class="control-label">{{ _lang('Product Name') }}</label>
					<input type="text" class="form-control" name="item_name" value="{{ old('item_name') }}" required>
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<a href="{{ route('suppliers.create') }}" data-reload="false" data-title="{{ _lang('Add Supplier') }}" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
					<label class="control-label">{{ _lang('Supplier') }}</label>
					<select class="form-control select2-ajax" data-value="id" data-display="supplier_name" data-table="suppliers" data-where="1" name="supplier_id">
						<option value="">{{ _lang('- Select Supplier -') }}</option>
					</select>
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">{{ _lang('Product Cost').' '.currency() }}</label>
					<input type="text" class="form-control" name="product_cost" value="{{ old('product_cost') }}" required>
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">{{ _lang('Product Price') .' '.currency() }}</label>
					<input type="text" class="form-control" name="product_price" value="{{ old('product_price') }}" required>
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<a href="{{ route('product_units.create') }}" data-reload="false" data-title="{{ _lang('Add Product Unit') }}" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
					<label class="control-label">{{ _lang('Product Unit') }}</label>
					<select class="form-control select2-ajax" data-value="unit_name" data-display="unit_name" data-table="product_units" data-where="1" name="product_unit" required>
						<option value="">{{ _lang('- Select Product Unit -') }}</option>
					</select>
				  </div>
				</div>

        <div class="col-12">
		<div class="row">
			<div class="col-md-6">
			  <div class="form-group">
				<a href="{{ route('accounts.create') }}" data-reload="false" data-title="{{ _lang('Create Account') }}" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
				<label class="control-label">Select Account</label>
				<select class="form-control select2-ajax" data-value="id" data-display="account_title" data-display2="account_currency" data-table="accounts" data-where="1" name="account_id" id="account_id" required>
				   <option value="">{{ _lang('Select One') }}</option>
				   {{ create_option("accounts","id",array("account_title","account_currency"),old('account_id'),array("company_id="=>company_id())) }}
				</select>
			  </div>
			</div>


				<div class="col-md-12">
				  <div class="form-group">
					<label class="control-label">{{ _lang('Description') }}</label>
					<textarea class="form-control" name="description">{{ old('description') }}</textarea>
				  </div>
				</div>

				<div class="col-md-12">
				  <div class="form-group">
					<button type="reset" class="btn btn-danger">{{ _lang('Reset') }}</button>
					<button type="submit" class="btn btn-primary">{{ _lang('Save') }}</button>
				  </div>
				</div>
			</div>
	    </form>
	</div>
  </div>
 </div>
</div>
@endsection


