<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClimateTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Types_climate', function (Blueprint $table) {
            $table->id();
            $table->string('type_climate');
            $table->timestamps();
        });

        DB::table('Types_climate')->insert([
            ['type_climate'=>'Cálido húmedo'],
            ['type_climate'=>'Cálido subhúmedo'],
            ['type_climate'=>'Muy seco'],
            ['type_climate'=>'Seco'],
            ['type_climate'=>'Seco con lluvias en invierno'],
            ['type_climate'=>'Templado con lluvias en inviernos'],
            ['type_climate'=>'Templado húmedo'],
            ['type_climate'=>'Templado subhúmedo']
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('_climate_types');
    }
}
