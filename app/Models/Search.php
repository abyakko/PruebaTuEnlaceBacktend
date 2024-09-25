<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Search extends Model
{
    protected $fillable = [
        'search_term', 'product_id'
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
