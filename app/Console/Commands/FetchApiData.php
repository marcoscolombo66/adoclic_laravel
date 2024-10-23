<?php
// app/Console/Commands/FetchApiData.php
namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Services\ApiService;

class FetchApiData extends Command
{
    protected $signature = 'fetch:api-data';
    protected $description = 'Fetch data from API and store in the database';

    private $apiService;

    public function __construct(ApiService $apiService)
    {
        parent::__construct();
        $this->apiService = $apiService;
    }

    public function handle()
    {
        // Llamada al servicio que consulta la API
        $this->info('Fetching data from API...');
        $this->apiService->fetchEntities();
        $this->info('Data fetched and stored successfully!');
    }
}
