<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PengaduanImage extends Model
{
    public $timestamps = false;
    protected $table = 'pengaduan_image'; 
    protected $fillable = ['id','pengaduan_id_image','image']; 
}
