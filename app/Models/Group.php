<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Translatable;


class Group extends Model
{
    use HasFactory, Translatable;
    public $translatedAttributes=['name','notes'];
    public $guarded=[];

    public function service_group()
    {
        return $this->belongsToMany(Service::class, 'pivot_service_group')->withPivot('quantity');
    }
}
