<?php
namespace Tests\Unit;
use App\Models\Entity;
use Tests\TestCase;

class EntityTest extends TestCase
{

    public function testEntityBelongsToCategory()
    {
        $entities = Entity::all(); 
        $this->assertNotEmpty($entities);  
    }

}
