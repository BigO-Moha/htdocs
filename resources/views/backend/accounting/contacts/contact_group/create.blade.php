@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-md-6">
	<div class="card">
	<span class="panel-title d-none">{{ _lang('Add Contact Group') }}</span>

	<div class="card-body">
	  <form method="post" class="validate" autocomplete="off" action="{{url('contact_groups')}}" enctype="multipart/form-data">
		{{ csrf_field() }}
		<div class="row">
			<div class="col-md-12">
			    <div class="form-group">
				   <label class="control-label">{{ _lang('Group Name') }}</label>						
				   <input type="text" class="form-control" name="name" value="{{ old('group') }}" required>
			    </div>
			</div>
			
			<div class="col-md-12">
				<div class="form-group">
					<label class="control-label">{{ _lang('Note') }}</label>						
					<textarea class="form-control" name="note">{{ old('note') }}</textarea>
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


