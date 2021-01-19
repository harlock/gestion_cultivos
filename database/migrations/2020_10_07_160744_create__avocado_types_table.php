<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAvocadoTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Types_avocado', function (Blueprint $table) {
            $table->id();
            $table->string('type_avocado');
            $table->timestamps();
        });

        DB::table('Types_avocado')->insert([
            ['type_avocado'=>'Hass'],
            ['type_avocado'=>'Bacon'],
            ['type_avocado'=>'Zutano'],
            ['type_avocado'=>'Fuerte'],
            ['type_avocado'=>'Reed'],
            ['type_avocado'=>'Pinkerton'],
            ['type_avocado'=>'Lamb Hass'],
            ['type_avocado'=>'Nabal'],
            ['type_avocado'=>'Criollo'],
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('_avocado_types');
    }
}
