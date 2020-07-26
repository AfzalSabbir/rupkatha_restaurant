@extends('backend.layouts.master')

@section('fav_title', 'Sale')

@section('styles')
<style>
	@media print{
		.none{
			display: none;
		}
		.hide{
			display: block !important;
		}
		.text-white{
			color: #000000 !important;
		}
	}
	.hide{
		display: none;
	}
</style>
@endsection

@section('content')
<div class="app-title">
	<div>
		<h1><i class="{{ 'fa fa-money' }}"></i> {{ __('backend/sale.sale_management') }}</h1>
	</div>
	<ul class="app-breadcrumb breadcrumb">
		<li class="breadcrumb-item"><a href="{{ route('admin.home') }}">{{ __('backend/default.dashboard') }}</a></li>
		@if ('view' == 'index')
		<li class="breadcrumb-item active">{{ __('backend/sale.sale') }}</li>
		@elseif ('view' == 'add')
		<li class="breadcrumb-item"><a href="{{ route('admin.sale.index') }}">{{ __('backend/sale.sale') }}</a></li>
		<li class="breadcrumb-item active">{{ __('backend/default.add_new') }}</li>
		@elseif ('view' == 'edit')
		<li class="breadcrumb-item"><a href="{{ route('admin.sale.index') }}">{{ __('backend/sale.sale') }}</a></li>
		<li class="breadcrumb-item active">{{ __('backend/default.edit') }}</li>
		@elseif ('view' == 'view')
		<li class="breadcrumb-item"><a href="{{ route('admin.sale.index') }}">{{ __('backend/sale.sale') }}</a></li>
		<li class="breadcrumb-item active">{{ __('backend/default.view') }}</li>
		@endif
	</ul>
</div>


<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="card-header">
				<div class="row none">
					<div class="col-md-6"><h2><i class="{{ 'fa fa-eye' }}"></i> {{ __('backend/sale.view_sale') }}</h2></div>
					<div class="col-md-6">
						<button class="btn alert-info float-right ml-2" onclick="window.print()">
							<i class="fa fa-fw fa-print"></i>{{ __('backend/default.print') }}
						</button>
						<a href="{{ route('admin.sale.index') }}" class="float-right btn btn-primary alert-primary"><i class="fa fa-arrow-left"></i> {{ __('backend/default.list') }}</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>

			<div class="card-body">
				<div class="row">
					@php
					$sale_id = $sales[0]->sale_id;
					$sale_id_len = strlen((string)$sales[0]->sale_id);
					$voucher = $sales[0]->sale_id;
					if($sale_id_len < 2){
						$voucher = "00000".$sale_id;
					}
					elseif($sale_id_len < 3){
						$voucher = "0000".$sale_id;
					}
					elseif($sale_id_len < 4){
						$voucher = "000".$sale_id;
					}
					elseif($sale_id_len < 5){
						$voucher = "00".$sale_id;
					}
					elseif($sale_id_len < 2){
						$voucher = "0".$sale_id;
					}

					$site_setting = \App\Models\Setting::first();
					@endphp

					<div class="col-sm-12 mb-3 hide" style="border-bottom: 2px solid #009688;">
						<div class="row">

							<table class="table table-bordered mb-0">
								<tr>
									<th class="text-center p-0 border-0">
										<h3>{{ $site_setting->title }}</h3>
										<span>{!! $site_setting->address !!}</span> <br />
										<p class="p-0 m-1">
											<i class="fa fa-envelope"></i> : {{ $site_setting->email }} |
											<i class="fa fa-phone-square"></i> : {{ $site_setting->mobile }} |
											<i class="fa fa-facebook-square"></i> : {{ $site_setting->facebook }}
										</p>
									</th>
								</tr>
							</table>

							{{-- <div class="col-sm-4">
								<img class=" mt-3" src="{{ asset('public/images/settings/'.$site_setting->favicon) }}" style="height: 50px; width: 50px; float: left;">
							</div>
							<div class="col-sm-4 text-center">
								<h4>{{ $site_setting->title }}</h4>
								<span>{!! $site_setting->address !!}</span>
							</div>
							<div class="col-sm-4 text-right">
								<p class="mt-3">
									{{ $site_setting->email }} : <i class="fa fa-envelope"></i><br>
									{{ $site_setting->mobile }} : <i class="fa fa-phone-square"></i><br>
									{{ $site_setting->facebook }} : <i class="fa fa-facebook-square"></i>
								</p>
							</div> --}}
						</div>
					</div>
					<div class="col-sm-12 v_customer">
						
						<div class="row text-center hide mt-2 mb-4 pb-1">
							<h3 style="text-transform: uppercase;">&#127831;---Invoice---&#127831;</h3>
						</div>
						<div class="row text-left">
							<div class="col-md-4 ">
								<label class="mx-1"><strong>{{ __('backend/default.voucher') }}:</strong> <span class="">{{ $voucher }}</span> </label>
							</div>
							<div class="col-md-4 ">
								<label class="mx-1"><strong>{{ __('backend/default.customer_name') }}:</strong> {{ $sales[0]->customer_name }} </label><br>
							</div>
							<div class="col-md-4 ">
								<label class="mx-1"><strong>{{ __('backend/default.customer_mobile') }}:</strong> {{ $sales[0]->customer_mobile }}</label> 
							</div>
							<div class="col-md-4 ">
								<label class="mx-1"><strong>{{ __('backend/default.salesman') }}:</strong> {{ $sales[0]->name }}</label>
							</div>
							<div class="col-md-4 ">
								<label class="mx-1"><strong>{{ __('backend/default.date') }}</strong> : {{ date('Y-M-d') }}</label><br>
							</div>
							<div class="col-md-4 ">
								<label class="mx-1"><strong>{{ __('backend/default.time') }}</strong> : {{ date('h:i:s a') }}</label>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="table-responsive">
							<table class="table table-bordered display table-striped">
								<thead>
									<th width="5%">{{ __('backend/default.sl') }}</th>
									<th>{{ __('backend/product.product') }}</th>
									<th>{{ __('backend/default.total') }}</th>
								</thead>
								<tbody>
									@php
									$totalPrice = 0;
									$totalQty = 0;
									@endphp
									@foreach($sales as $sale)
										<tr>
											<td>{{ $loop->index + 1 }}</td>
											<td>
												{{ $sale->title }} <br>
												({{ $sale->quantity.' * '.$sale->price }})
												@php $totalQty += $sale->quantity @endphp
												@php $totalPrice += $sale->price * $sale->quantity @endphp
											</td>
											<td>{{ sprintf('%0.2f', $sale->price * $sale->quantity).' ৳' }}</td>
										</tr>
									@endforeach
									<tr>
										<th colspan="2" class="text-right"><strong>{{ __('backend/default.total') }}</strong></th>
										<th>{{ sprintf('%0.2f', $totalPrice).' ৳' }}</th>
									</tr>
									<tr>
										<th colspan="2" class="text-right"><strong>{{ __('backend/default.discount') }}</strong></th>
										<th>{{ sprintf('%0.2f', $sale->discount_2).' %' }}</th>
									</tr>
									<tr>
										<th colspan="2" class="text-right"><strong>{{ __('backend/default.discount') }}</strong></th>
										<th>{{ sprintf('%0.2f', $sale->discount).' ৳' }}</th>
									</tr>
									<tr>
										<th colspan="2" class="text-right"><strong>{{ __('backend/default.vat') }}</strong></th>
										<th>{{ sprintf('%0.2f', $sale->vat).' %' }}</th>
									</tr>
									<tr>
										<th colspan="2" class="text-right"><strong>{{ __('backend/default.payable') }}</strong></th>
										<th>{{ sprintf('%0.2f', $sale->after_discount).' ৳' }}</th>
									</tr>
									<tr>
										<th colspan="2" class="text-right">{{ __('backend/default.paid') }}</th>
										<th>{{ sprintf('%0.2f', $sales[0]->given_money).' ৳' }}</th>
									</tr>
									<tr>
										<th colspan="2" class="text-right">{{ __('backend/default.return') }}</th>
										<th>{{ sprintf('%0.2f', $sales[0]->given_money - $sale->after_discount).' ৳' }}</th>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection

@section('scripts')
{{-- <script>
	const app = new Vue({
		el: '#app',
		mounted(){
			console.log('dfd')
		}
	});
</script> --}}
@endsection
