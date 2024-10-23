<?php

namespace App\Http\Controllers;

use App\Models\Category;

class CategoryController extends Controller
{
    public function index()
    {        
        $categories = Category::whereIn('category', ['Animals', 'Security'])->get(); 
        dd($categories); 
    }
}
