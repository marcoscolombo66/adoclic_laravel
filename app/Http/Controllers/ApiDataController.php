<?php
// app/Http/Controllers/ApiDataController.php
namespace App\Http\Controllers;

use App\Services\ApiService;
use Illuminate\Http\JsonResponse;

class ApiDataController extends Controller
{
    private $apiService;

    public function __construct(ApiService $apiService)
    {
        $this->apiService = $apiService;
    }

    public function fetchAndStoreData(): JsonResponse
    {
        // Llamamos al servicio para poblar la base de datos con los datos de la API
        $this->apiService->fetchEntities();

        return response()->json([
            'success' => true,
            'message' => 'Data fetched and stored successfully!'
        ]);
    }
}
