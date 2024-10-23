<?php
// app/Http/Controllers/ApiController.php
namespace App\Http\Controllers;

use App\Models\Entity;
use App\Models\Category;
use Illuminate\Http\JsonResponse;

class ApiController extends Controller
{
    public function getByCategory($category): JsonResponse
    {
        $category = Category::where('category', $category)->firstOrFail();
        
        $entities = Entity::where('category_id', $category->id)->with('category')->get();

        return response()->json([
            'success' => true,
            'data' => $entities
        ]);
    }
}
