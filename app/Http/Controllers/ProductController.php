<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        return Product::all();  // Devuelve todos los productos
    }

    public function show($id)
    {
        return Product::findOrFail($id);  // Devuelve un producto específico por ID
    }
}
