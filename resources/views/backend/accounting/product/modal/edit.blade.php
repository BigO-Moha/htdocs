<form method="post" class="validate ajax-submit" autocomplete="off" action="{{action('ProductController@update', $id)}}" enctype="multipart/form-data">
	{{ csrf_field()}}
	<input name="_method" type="hidden" value="PATCH">				
   
    <div class="col-12">
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label class="control-label">{{ _lang('Product Name') }}</label>						
					<input type="text" class="form-control" name="item_name" value="{{ $item->item_name }}" required>
				</div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<a href="{{ route('suppliers.create') }}" data-reload="false" data-title="{{ _lang('Add Supplier') }}" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
				<label class="control-label">{{ _lang('Supplier') }}</label>						
				<select class="form-control select2-ajax" data-value="id" data-display="supplier_name" data-table="suppliers" data-where="1" name="supplier_id">
					{{ create_option("suppliers","id","supplier_name",$item->product->supplier_id,array("company_id="=>company_id())) }}
				</select>
			  </div>
			</div>

			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label">{{ _lang('Product Cost').' '.currency() }}</label>						
					<input type="text" class="form-control" name="product_cost" value="{{ $item->product->product_cost }}" required>
				</div>
			</div>

			<div class="col-md-6">
				<div class="form-group">
					<label class="control-label">{{ _lang('Product Price').' '.currency() }}</label>						
					<input type="text" class="form-control" name="product_price" value="{{ $item->product->product_price }}" required>
				</div>
			</div>
			
			<div class="col-md-6">
			  <div class="form-group">
				<a href="{{ route('product_units.create') }}" data-reload="false" data-title="{{ _lang('Add Product Unit') }}" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
				<label class="control-label">{{ _lang('Product Unit') }}</label>						
				<select class="form-control select2-ajax" data-value="unit_name" data-display="unit_name" data-table="product_units" data-where="1" name="product_unit" required>
					{{ create_option("product_units","unit_name","unit_name",$item->product->product_unit,array("company_id="=>company_id())) }}
				</select>
			  </div>
			</div>

			<div class="col-md-12">
				<div class="form-group">
					<label class="control-label">{{ _lang('Description') }}</label>						
					<textarea class="form-control" name="description">{{ $item->product->description }}</textarea>
				</div>
			</div>

			<div class="col-md-12">
			  <div class="form-group">
				<button type="submit" class="btn btn-primary">{{ _lang('Update') }}</button>
			  </div>
			</div>
		</div>
	</div>
</form>