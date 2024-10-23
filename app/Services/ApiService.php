<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;
use App\Models\Entity;
use App\Models\Category;
use Illuminate\Support\Facades\File;

class ApiService
{
    private $apiUrl = 'https://api.publicapis.org/entries';

    public function fetchEntities()
    {
        // Consulta la API
        $response = Http::get($this->apiUrl);

        // Si la API está caída, usa el archivo local
        if ($response->failed()) {
            $json = File::get(database_path('entries.json'));
            $data = json_decode($json, true);
        } else {
            $data = $response->json();
        }

        $this->storeEntities($data['entries']);
    }

    private function storeEntities($entries)
    {
        $categories = Category::whereIn('category', ['Animals', 'Security'])->get()->keyBy('category');

        foreach ($entries as $entry) {
            if (in_array($entry['Category'], ['Animals', 'Security'])) {
                Entity::create([
                    'api' => $entry['API'],
                    'description' => $entry['Description'],
                    'link' => $entry['Link'],
                    'category_id' => $categories[$entry['Category']]->id,
                ]);
            }
        }
    }
}
