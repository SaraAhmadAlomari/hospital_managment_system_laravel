<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Doctor;
use App\Models\Appointment;

class DoctorTableSeeder extends Seeder
{

    public function run()
    {
        Doctor::factory()->count(10)->create();
        $Appointments = Appointment::all();

        Doctor::all()->each(
            function ($doctor) use ($Appointments) {
            $doctor->doctorappointments()->attach(
            $Appointments->random(rand(1,7))->pluck('id')->toArray()
           );

        });
    }
}
