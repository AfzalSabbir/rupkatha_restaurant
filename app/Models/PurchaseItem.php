<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PurchaseItem extends Model
{
	
	protected $fillable = [
		'title', 'regular_price', 'description', 'status'
	];

}