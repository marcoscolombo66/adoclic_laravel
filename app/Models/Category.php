<?php
// app/Models/Category.php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Log;

class Category extends Model
{
    protected $fillable = ['category'];
    use HasFactory;
    public function entities()
    {
        return $this->hasMany(Entity::class);
    }
    
}
