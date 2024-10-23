<?php
// tests/Feature/ApiControllerTest.php
namespace Tests\Feature;

use Tests\TestCase;
use App\Models\Entity;
use App\Models\Category;
 

class ApiControllerTest extends TestCase
{
 
    public function testApiReturns()
    {
        $response = $this->getJson('/api/Animals'); // Llama a la ruta

    // Verifica que la respuesta sea status 200
    $response->assertStatus(200); 

    // Verifica que la respuesta sea JSON
    $this->assertJson($response->getContent());
    }
    
    
}
