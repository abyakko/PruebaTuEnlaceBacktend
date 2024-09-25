<?php
namespace App\Http\Controllers;

use App\Models\Search;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SearchController extends Controller
{
    public function store(Request $request)
{
    // Validar los datos entrantes
    $validatedData = $request->validate([
        'search_term' => 'required|string|max:255',
        'product_id' => 'nullable|exists:products,id'
    ]);

    // Crear un nuevo registro de búsqueda
    Search::create([
        'search_term' => $validatedData['search_term'],
        'product_id' => $validatedData['product_id']
    ]);

    return response()->json(['message' => 'Search saved successfully']);
}



    public function topSearches()
    {
        $topProducts = DB::table('products')
            ->join('searches', 'products.id', '=', 'searches.product_id')
            ->select('products.id', 'products.title', DB::raw('COUNT(searches.product_id) as search_count'))
            ->groupBy('products.id', 'products.title')
            ->orderBy('search_count', 'desc')
            ->limit(5)
            ->get();

        return response()->json($topProducts);
    }
}
