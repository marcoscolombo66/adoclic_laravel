<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Entity;

class EntitySeeder extends Seeder
{
    public function run()
    {
        Entity::create([
            'api' => 'https://example.com/api/1',
            'description' => 'Sample entity 1',
            'link' => 'https://example.com/entity/1',
            'category_id' => 1, // Assuming 'Animals' category has ID 1
        ]);

        Entity::create([
            'api' => 'https://example.com/api/2',
            'description' => 'Sample entity 2',
            'link' => 'https://example.com/entity/2',
            'category_id' => 2, // Assuming 'Security' category has ID 2
        ]);

        // Add more entities as needed
    }
}
