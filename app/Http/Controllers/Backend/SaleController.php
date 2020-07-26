<?php

namespace App\Http\Controllers\Backend;
use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Cart;
use DB;

class SaleController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }


    public function index()
    {
        return view('backend.pages.sale.index');
    }


    public function create()
    {
        $categories = Category::where('status', 1)->orderBy('title', 'asc')->get();
        Cart::destroy();
        return view('backend.pages.sale.add', compact('categories'));
    }


    public function addToSale(Request $request)
    {
        $price = $request->product['regular_sale_price'] - ($request->product['regular_sale_price'] * $request->product['discount']) / 100;

        Cart::add(
            [
                "id" => $request->product['id'], 
                "name" => $request->product['title'], 
                "qty" => 1, 
                "price" => $price,
                "options" => [
                    "image" => $request->product['image'],
                    "regular_sale_price" => $request->product['regular_sale_price'],
                    "discount" => $request->product['discount'],
                ]
            ]
        );

        return response()->json(['cart' => Cart::content(), 'total' => Cart::subtotal(), 'count' => Cart::count()]);
    }


    public function store(Request $request)
    {
        //
    }

    public function view($sale_id)

    {

        //discount in TK
        //discount_2 in %
        
        $sales = DB::table('sale_products')
        ->leftJoin('products as products', 'products.id', '=', 'sale_products.product_id')
        ->leftJoin('sales as sales', 'sales.id', '=', 'sale_products.sale_id')
        ->leftJoin('admins as admins', 'sales.admin_id', '=', 'admins.id')
        ->where('sale_id', $sale_id)
        ->select('sale_products.*', 'products.title as title', 'sales.customer_name as customer_name', 'sales.vat as vat',
            'sales.customer_mobile as customer_mobile', 'sales.given_money as given_money', 'sales.discount as discount', 'sales.discount_2 as discount_2', 'admins.name as name',
            'sales.total_price_after_discount as after_discount')
        ->get();
        return view('backend.pages.sale.view', compact('sales'));
    }


    public function edit($id)
    {
        $categories = Category::orderBy('id', 'desc')->get();
        return view('backend.pages.sale.edit',compact('id', 'categories'));
    }


    public function update(Request $request, $id)
    {
        //
    }


    public function destroy($id)
    {
        //
    }

    public function bill ()
    {
        return view('backend.pages.sale.bill');
    }

    public function getCartItem (){

        return response()->json(['cart' => Cart::content(), 'total' => Cart::subtotal(), 'count' => Cart::count()]);
    }

    /**
     * update quantity of a product
     */
    public function updateCart(Request $request)
    {
        Cart::update($request->rowId, $request->qty);

        return response()->json(['cart' => Cart::content(), 'total' => Cart::subtotal(), 'count' => Cart::count()]);
    }

    /**
     * update quantity of a product
     */
    public function updateCartPrice(Request $request)
    {
        Cart::updateprice($request->rowId, $request->price);
        // Cart::update($request->product_id, $request->price);
        return response()->json(['cart' => Cart::content(), 'total' => Cart::subtotal(), 'count' => Cart::count()]);

        // return response()->json(['cart' => Cart::content(), 'total' => Cart::subtotal(), 'count' => Cart::count()]);
    }

    /**
     * Delete cart item
     */
    public function deleteFromCart(Request $request)
    {
        Cart::remove($request->rowId);

        return response()->json(['cart' => Cart::content(), 'total' => Cart::subtotal(), 'count' => Cart::count()]);
    }

    /**
     * allI Cart item Delete
     */

    public function allItemDelete()
    {
        Cart::destroy();
        return redirect('admin/sale/add');
    }
}
