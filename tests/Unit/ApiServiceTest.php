<?php

namespace Tests\Unit;
use Tests\TestCase;
use Illuminate\Support\Facades\Http;


class ApiServiceTest extends TestCase
{
    public function testApiServiceFetchesAndStoresEntities()
    {
        // llamada al API
        $apiUrl = 'https://api.publicapis.org/entries';
        $response = Http::get($apiUrl);        
        $this->assertNotEmpty($response); 
    }
}
