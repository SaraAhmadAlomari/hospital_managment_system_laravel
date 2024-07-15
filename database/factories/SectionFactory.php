<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Section>
 */
class SectionFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => $this->faker->unique()->randomElement([
                'Department of Neurology',
                 'Department of Surgery',
                'children section',
                'Department of Obstetrics and Gynecology',
                'Department of Ophthalmology',
                'Department of Internal Affairs']),
            'description'=>$this->faker->paragraph,
        ];
    }
}
