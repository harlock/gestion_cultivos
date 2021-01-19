<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWorkdaysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Workdays', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('orchard_id');
            $table->bigInteger('user_id');
            $table->date('date_work');
            $table->integer('pruning')->default(0);
            $table->double('cost_pruning')->default(0);
            $table->integer('irrigation')->default(0);
            $table->double('cost_irrigation')->default(0);
            $table->integer('undergrowth_control')->default(0);
            $table->double('cost_undergrowth_control')->default(0);
            $table->integer('plague_control')->default(0);
            $table->double('cost_plague_control')->default(0);
            $table->integer('fertilization')->default(0);
            $table->double('cost_fertilization')->default(0);
            $table->integer('harvest')->default(0);
            $table->double('cost_harvest')->default(0);
            $table->double('general_expenses');
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
        Schema::dropIfExists('Workdays');
    }
}
