<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Appointment;

class AppointmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('appointments')->delete();
        $Appointments = [
            ['name' => 'satrday'],
            ['name' => 'sunday'],
            ['name' => 'monday'],
            ['name' => 'tuseday'],
            ['name' => 'wednsday'],
            ['name' => 'thersday'],
            ['name' => 'friday'],
        ];
        foreach ($Appointments as $Appointment) {
            Appointment::create($Appointment);
        }
    }
}
