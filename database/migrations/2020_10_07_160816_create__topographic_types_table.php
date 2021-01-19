<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTopographicTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Types_topographic', function (Blueprint $table) {
            $table->id();
            $table->string('type_topography');
            $table->timestamps();
        });

        DB::table('Types_topographic')->insert([
            ['type_topography'=>'Llano'],
            ['type_topography'=>'Ondulado'],
            ['type_topography'=>'Fuertemente ondulado'],
            ['type_topography'=>'Colinado'],
            ['type_topography'=>'Montañoso']
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('_topographic_types');
    }
}

