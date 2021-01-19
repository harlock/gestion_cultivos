<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypeJobM extends Model
{
    use HasFactory;
    protected $table = 'Job_types';
    protected $primaryKey='id';
    protected $fillable=['job_type'];
}
