<!-- Full Structure -->
@extends('backend.layouts.master')

@section('fav_title', __('backend/balance_sheet.balance_sheet') )

<!-- Write Styles <style>In Here</style> -->
@section('styles')

<style type="text/css">
	.datepicker {
		margin-top: 60px;
	}
	.input-group-addon i {
		height: 33px !important;
		right: 2px;
		top: 2px;
	}
</style>
@endsection

<!-- This Section Will Shown <body>In Here</body> -->
@section('content')


<div class="card">
	<div class="card-header">
		<div class="row">
			<div class="col-md-11">
				<h2><i class="fa fa-table"></i> {{ __('backend/balance_sheet.balance_sheet') }}</h2>
			</div>
			<div class="col-md-1">
				<h2>
					<a href="#" onclick="print_method()" class="btn btn-primary text-center float-right">
						<i class="fa fa-print"></i> {{ __('backend/default.print') }}
					</a>
				</h2>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="card-body">
		<div class="col-sm-12 mb-3 p-3 hide">
			<div class="row">
				<table class="table mb-0">
					<tr>
						<th class="text-center p-0 border-0">
							@php
								$site_setting = \App\Models\Setting::first();
							@endphp
							<h3>{{ $site_setting->title }}</h3>
							<span>{{ $site_setting->address }}</span> <br />
							<p class="p-0 m-1">
								<i class="fa fa-envelope"></i> : {{ $site_setting->email }} |
								<i class="fa fa-phone-square"></i> : {{ $site_setting->mobile }} |
								<i class="fa fa-facebook-square"></i> : {{ $site_setting->faccebook }}
							</p>
						</th>
					</tr>
				</table>
			</div>
		</div>
		<div class="hide col-sm-12 text-center"><h2><i class="{{ 'fa fa-table' }}"></i> All Sale</h2></div>

		<form action="{{ route('admin.balance_sheet.index') }}" method="post" class="none">
			@csrf
			<div class="row mb-3">
				<div class="col-md-3">
					<div class="input-group date" id="fromDate" data-provide="datepicker">
						<input type="text" class="form-control from_date" name="from_date" value="{{ $app->request->input('from_date') }}" autocomplete="off">
						<div class="input-group-addon from_icon">
							<span><i class="fa fa-calendar"></i></span>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="input-group date" id="toDate" data-provide="datepicker">
						<input type="text" class="form-control to_date" name="to_date" value="{{ $app->request->input('to_date') }}" autocomplete="off">
						<div class="input-group-addon to_icon">
							<span><i class="fa fa-calendar"></i></span>
						</div>
					</div>
				</div>
				<div class="col-md-1">
					<button class="btn btn-primary searchByDate" type="submit">{{ __('backend/default.search') }}</button>
				</div>
			</div>
		</form>
		<br>

		<div class="row">

			{{-- Table of Seles --}}
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<div class="row">
							<div class="col-md-12"><h2><i class="fa fa-table"></i> {{ __('backend/balance_sheet.sales') }}</h2></div><div class="clearfix"></div>
						</div>
					</div>

					<div class="card-body">        
						<div class="table-responsive">
							<table class="table table-bordered table-hover display">
								<thead>
									<th>{{ __('backend/default.sl') }}</th>
									{{-- <th>{{ __('backend/default.date') }}</th> --}}
									<th>{{ __('backend/default.voucher') }}</th>
									<th>{{ __('backend/balance_sheet.amount') }}</th>
								</thead>
								<tbody>
									@php
									$totalSale = 0;
									@endphp	
									@foreach($sales as $sale)	
									<tr class="">
										<td>{{ $loop->index + 1 }}</td>
										{{-- <td>{{ $sale->created_at }}</td> --}}
										<td>{{ \App\Helpers\CalculationHelper::generateVoucher($sale->id) }}</td>
										<td>{{ $sale->total_price_after_discount.' ৳' }} @php $totalSale += $sale->total_price_after_discount; @endphp</td>                  
									</tr>
									@endforeach 
									<tr>
										<td colspan="2" class="text-right"><strong>{{ __('backend/default.total') }}</strong></td>
										<td><strong>{{ $totalSale.' ৳' }}</strong></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

			{{-- Table of Purcheses --}}
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="row">
									<div class="col-md-12"><h2><i class="fa fa-table"></i> {{ __('backend/balance_sheet.purchases') }}</h2></div><div class="clearfix"></div>
								</div>
							</div>
							<div class="card-body">        
								<div class="table-responsive">
									<table  class="table table-bordered table-hover display">
										<thead>
											<th>{{ __('backend/default.sl') }}</th>
											{{-- <th>{{ __('backend/default.date') }}</th> --}}
											<th>{{ __('backend/default.voucher') }}</th>
											<th>{{ __('backend/balance_sheet.amount') }}</th>
										</thead>
										<tbody>
											@php
												$totalPuchase = 0;
											@endphp
											@foreach($purchases as $purchase)
												{{-- @dd($purchases, $purchase); --}}
												<tr class="">
													<td>{{ $loop->index + 1 }}</td>
													{{-- <td>{{ $sale->created_at }}</td> --}}
													{{-- <td>{{ \App\Helpers\CalculationHelper::generateVoucher($purchase->id) }}</td> --}}
													<td>{{ $purchase['voucher'] }}</td>
													<td>{{ $purchase['price'].' ৳' }} @php $totalPuchase += $purchase['price']; @endphp</td>                  
												</tr>
											@endforeach
											<tr>
												<td colspan="2" class="text-right"><strong>{{ __('backend/default.total') }}</strong></td>
												<td><strong>{{ $totalPuchase.' ৳' }}</strong></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>

				<br>
				<br>

				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="row">
									<div class="col-md-12"><h2><i class="fa fa-table"></i> {{ __('backend/cost.cost') }}</h2></div><div class="clearfix"></div>
								</div>
							</div>
							<div class="card-body">        
								<div class="table-responsive">
									<table  class="table table-bordered table-hover display">
										<thead>
											<th>{{ __('backend/default.sl') }}</th>
											{{-- <th>{{ __('backend/default.date') }}</th> --}}
											<th>{{ __('backend/default.cost_field') }}</th>
											<th>{{ __('backend/balance_sheet.amount') }}</th>
										</thead>
										<tbody>
											@php
											$totalCost = 0;
											@endphp
											@foreach($costs as $cost)
											<tr class="">
												<td>{{ $loop->index + 1 }}</td>
												{{-- <td>{{ $sale->created_at }}</td> --}}
												{{-- <td>{{ \App\Helpers\CalculationHelper::generateVoucher($cost->id) }}</td> --}}
												<td>{{ $cost_fields[$cost->cost_field_id] }}</td>
												<td>{{ $cost->price.' ৳' }} @php $totalCost += $cost->price; @endphp</td>                  
											</tr>
											@endforeach
											<tr>
												<td colspan="2" class="text-right"><strong>{{ __('backend/default.total') }}</strong></td>
												<td><strong>{{ $totalCost.' ৳' }}</strong></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>

				@php
					$PuchaseCost = $totalPuchase + $totalCost;
				@endphp
				<div class="row">
					<div class="col-md-12 mt-3">
						<strong class="w-100 {{ $PuchaseCost > 0 ? 'alert-secondary' : 'alert-secondary' }} d-block text-center pt-3 pb-2 br-2">
							<h3>Total : {{ $PuchaseCost }} ৳ </h3>
						</strong>
					</div>
				</div>
			</div>
		</div>
		<br>
		<br>
		@php
			$balance = $totalSale - ($totalPuchase+$totalCost)
		@endphp
		{{-- <div class="row {{ $balance > 0 ? 'alert-success' : 'alert-danger' }} pt-2">
			<div class="col-md-12 text-center"><strong><h3>Total : {{ $balance }} </h3></strong></div>
		</div>	 --}}

		<div class="row">
			<div class="col-md-12 mt-3">
				<strong class="w-100 {{ $balance > 0 ? 'alert-secondary' : 'alert-secondary' }} d-block text-center pt-3 pb-2 br-2">
					<h3>Total : {{ $balance }} ৳ </h3>
				</strong>
			</div>
		</div>
	</div>
</div>
@endsection

<!-- Write Scripts <script fileType="text/javascript">In Here</script> -->
@section('scripts')
<script type="text/javascript">

	$(document).ready(function(){
		$('#fromDate').datepicker({
			format: 'yyyy-mm-dd',
			todayHighlight:'TRUE',
			autoclose: true,
		});

		$('#toDate').datepicker({
			format: 'yyyy-mm-dd',
			todayHighlight:'TRUE',
			autoclose: true,
		});
	});
</script>
@endsection