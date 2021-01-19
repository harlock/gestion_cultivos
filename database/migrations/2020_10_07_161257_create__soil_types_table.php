<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSoilTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Types_soil', function (Blueprint $table) {
            $table->id();
            $table->string('type_soil');
            $table->timestamps();
        });

        DB::table('Types_soil')->insert([
            ['type_soil'=>'Regosol'],
            ['type_soil'=>'Litosol'],
            ['type_soil'=>'Xerosol'],
            ['type_soil'=>'Yermosol'],
            ['type_soil'=>'Cambisol'],
            ['type_soil'=>'Vertisol'],
            ['type_soil'=>'Feozem'],
            ['type_soil'=>'Rendzina'],
            ['type_soil'=>'Luvisol'],
            ['type_soil'=>'Acrisol'],
            ['type_soil'=>'Andosol'],
            ['type_soil'=>'Solonchak'],
            ['type_soil'=>'Planosol'],

        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('_soil_types');
    }
}

