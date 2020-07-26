<!-- Full Structure -->
@extends('backend.layouts.master')

@section('fav_title', __('backend/employee.employee') )

<!-- Write Styles <style>In Here</style> -->
@section('styles')
	<style>
		table tr td:nth-child(1){
			text-align: right;
		}
	</style>
@endsection

<!-- This Section Will Shown <body>In Here</body> -->
@section('content')
<!-- Top Management Part -->
<div class="app-title">
	<div>
		<h1><i class="{{ 'fa fa-male' }}"></i> {{ __('backend/employee.employee_management') }}</h1>
	</div>
	<ul class="app-breadcrumb breadcrumb">
		<li class="breadcrumb-item"><a href="{{ route('admin.home') }}">{{ __('backend/default.dashboard') }}</a></li>
		<li class="breadcrumb-item active">{{ __('backend/employee.employee') }}</li>
	</ul>
</div>

<!-- Table Part -->
<div class="row">
	<div class="col-md-12">
		<div class="card">

			<div class="card-header">
				<div class="row">
					<div class="col-md-6"><h2><i class="fa fa-eye"></i> {{ __('backend/employee.employee_view') }}</h2></div>
					{{-- <div class="col-md-6"><a href="{{ route('admin.employee.add') }}" class="float-right btn btn-primary"><i class="fa fa-plus"></i> {{ __('backend/default.add_new') }}</a></div> --}}
					<div class="clearfix"></div>
				</div>
			</div>

			<div class="card-body">
				<div class="table-responsive pt-1">
					<img src="{{ asset($row->photo) }}" height="160" alt="">
					<table id="datatable" class="table table-hover display">
						<tbody>
							<tr>
								<td width="17%"><strong>{{ __('backend/form_field.name') }} :</strong> </td>
								<td>{{ $row->name }}</td>
							</tr>
							<tr>
								<td><strong>{{ __('backend/form_field.mobile') }} :</strong> </td>
								<td>{{ $row->mobile }}</td>
							</tr>
							<tr>
								<td><strong>{{ __('backend/form_field.pre_address') }} :</strong> </td>
								<td>{{ $row->pre_address }}</td>
							</tr>
							<tr>
								<td><strong>{{ __('backend/form_field.per_address') }} :</strong> </td>
								<td>{{ $row->per_address }}</td>
							</tr>
							<tr>
								<td><strong>{{ __('backend/form_field.nid_no') }} :</strong> </td>
								<td>{{ $row->nid_no }}</td>
							</tr>
							<tr>
								<td><strong>{{ __('backend/form_field.designation') }} :</strong> </td>
								<td>{{ $row->designation }}</td>
							</tr>
							<tr>
								<td><strong>{{ __('backend/form_field.salary') }} :</strong> </td>
								<td>{{ $row->salary }}</td>
							</tr>
						</tbody>
					</table>

				</div>
			</div>
		</div>
	</div>
</div>
@endsection

<!-- Write Scripts <script fileType="text/javascript">In Here</script> -->
@section('scripts')
@endsection