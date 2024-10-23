<?php
namespace Tests\Unit;
use Tests\TestCase;
use App\Models\Category;


class CategoryTest extends TestCase
{
    
    public function testCanFetchCategories()
    {
        $categories = Category::whereIn('category', ['Animals', 'Security'])->get(); 
        $this->assertNotEmpty($categories);        
    }

}
