<?php
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SearchController;
use Illuminate\Support\Facades\Route;

Route::get('products', [ProductController::class, 'index']);
Route::get('products/{id}', [ProductController::class, 'show']);
Route::post('searches', [SearchController::class, 'store']);
Route::get('topSearches', [SearchController::class, 'topSearches']);