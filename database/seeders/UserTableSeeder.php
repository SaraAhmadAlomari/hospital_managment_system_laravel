<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{

    public function run()
    {
        DB::table('users')->delete();
        DB::table('users')->insert([
            'name' => 'user',
            'email' =>'user@gmail.com',
            'password' => Hash::make('12345678'),
        ]);
    }
}
