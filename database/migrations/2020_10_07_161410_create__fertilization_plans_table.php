<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFertilizationPlansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Fertilization_plans', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('orchards_id');
            $table->date('date_fertilization');
            $table->double('nitrogen');
            $table->double('phosphorus');
            $table->double('potassium');
            $table->double('calcium');
            $table->double('magnesium');
            $table->double('iron');
            $table->double('manganese');
            $table->double('zinc');
            $table->double('copper');
            $table->double('boron');
            $table->text('file');
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
        Schema::dropIfExists('_fertilization_plans');
    }
}


