<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Section;
use App\Models\Doctor;
use Illuminate\Support\Facades\Hash;

class DoctorFactory extends Factory
{

    protected $model = Doctor::class;
    public function definition()
    {
        return [
            'name' => $this->faker->name,
            'email' => $this->faker->unique()->safeEmail(),
            'email_verified_at' => now(),
            'password' => Hash::make('12345678'), // password
            'phone' => $this->faker->phoneNumber,
            'section_id' => Section::all()->random()->id,

        ];
    }
}
