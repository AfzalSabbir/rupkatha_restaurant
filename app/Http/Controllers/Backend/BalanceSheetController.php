<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Cost;
use App\Models\Cost_field;
use DB;

class BalanceSheetController extends Controller
{
	public function __construct()
	{
		$this->middleware('auth:admin');
	}


	public function index(Request $request)
	{
		$cost_fields = Cost_field::get()->toArray();

		foreach ($cost_fields as $key => $cost_field) {
			$cost_fields_tmp[$cost_field['id']] = $cost_field['title'];
		}
		
		$cost_fields = $cost_fields_tmp;

		if($request->isMethod('post')){
			$sales = $this->searchSale($request->from_date, $request->to_date);

			$purchases = $this->searchPurchase($request->from_date, $request->to_date);
			$purchases = $purchases->groupBy('voucher');
			$purchases_tmp = [];
			foreach ($purchases as $key => $purchase) {
				$price_tmp = 0;
				foreach ($purchase as $k => $purc) {
					$price_tmp += $purc->price*$purc->quantity;
				}
				$purchases_tmp[$key]['voucher'] = $purc->voucher;
				$purchases_tmp[$key]['price'] = $price_tmp;
			}
			$purchases = $purchases_tmp;

			$costs = $this->searchCost($request->from_date, $request->to_date);
		}
		else{
			$costs = $this->getTodayCost();

			$purchases = $this->getTodayPurchase();
			$purchases = $purchases->groupBy('voucher');
			$purchases_tmp = [];
			foreach ($purchases as $key => $purchase) {
				$price_tmp = 0;
				foreach ($purchase as $k => $purc) {
					$price_tmp += $purc->price*$purc->quantity;
				}
				$purchases_tmp[$key]['voucher'] = $purc->voucher;
				$purchases_tmp[$key]['price'] = $price_tmp;
			}
			$purchases = $purchases_tmp;

			$sales = $this->getTodaySale();
		}


		return view('backend.pages.balance_sheet.index', compact('costs', 'purchases', 'sales', 'cost_fields'));
	}


	private function getTodaySale()
	{
		$todayDate = date('Y-m-d');

		$sales = DB::table('sales')
		->where('status', 1)
		->whereDate('sales.created_at', '=', $todayDate)
		->select('*')
		->get();

		return $sales;
	}

	private function getTodayPurchase()
	{
		$todayDate = date('Y-m-d');

		$purchases = DB::table('purchase_histories')
		->where('status', 1)
		// ->where('cost_type', 'Purchase')
		->whereDate('purchase_histories.purchase_date', '=', $todayDate)
		->select('*')
		->get();

		return $purchases;
	}

	private function getTodayCost()
	{
		$todayDate = date('Y-m-d');

		$costs = DB::table('costs')
		->where('status', 1)
		->where('cost_type', 'General')
		->whereDate('costs.pickdate', '=', $todayDate)
		->select('*')
		->get();

		return $costs;
	}

	private function searchSale($from, $to=null)
	{
		if($to && $from && $from != $to){
			$to = date('Y-m-d', strtotime($to . ' +1 day'));
			$sales = DB::table('sales')
			->where('status', 1)
			->whereBetween('sales.created_at', [$from, $to])
			->select('*')
			->get();
		}
		else{
			$sales = DB::table('sales')
			->where('status', 1)
			->whereDate('sales.created_at', '=', $from)
			->select('*')
			->get();
		}

		return $sales;
	}	

	private function searchPurchase($from, $to=null)
	{
		if($to && $from && $from != $to){
			$to = date('Y-m-d', strtotime($to . ' +1 day'));
			$purchases = DB::table('purchase_histories')
			->where('status', 1)
			// ->where('cost_type', 'Purchase')
			->whereBetween('purchase_histories.purchase_date', [$from, $to])
			->select('*')
			->get();
		}
		else{
			$purchases = DB::table('purchase_histories')
			->where('status', 1)
			// ->where('cost_type', 'Purchase')
			->whereDate('purchase_histories.purchase_date', '=', $from)
			->select('*')
			->get();
		}

		return $purchases;
	}

	private function searchCost($from, $to=null)
	{
		if($to && $from && $from != $to){
			// $to = date('Y-m-d', strtotime($to . ' +1 day'));
			$costs = DB::table('costs')
			->where('status', 1)
			->where('cost_type', 'General')
			->whereBetween('costs.pickdate', [$from, $to])
			->select('*')
			->get();
		}
		else{
			$costs = DB::table('costs')
			->where('status', 1)
			->where('cost_type', 'General')
			->whereDate('costs.pickdate', '=', $from)
			->select('*')
			->get();
		}

		return $costs;
	}
}
