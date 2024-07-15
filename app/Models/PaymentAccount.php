<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PaymentAccount extends Model
{
    use HasFactory;
    public function patients()
    {
        return $this->belongsTo(Patient::class, 'patient_id');
    }
}
