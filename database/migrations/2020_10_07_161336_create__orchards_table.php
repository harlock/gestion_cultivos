<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrchardsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Orchards', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id');
            $table->string('name_orchard');
            $table->string('image');
            $table->string('location_orchard');
            $table->double('latitude');
            $table->double('length');
            $table->integer('altitude');
            $table->bigInteger('type_avocado_id');
            $table->bigInteger('type_topography_id');
            $table->bigInteger('type_soil_id');
            $table->double('surface');
            $table->bigInteger('type_climate_id');
            $table->integer('state');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('_orchards');
    }
}
