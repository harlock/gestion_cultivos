<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrchardWorksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orchard_works', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('orchard_id');
            $table->bigInteger('user_id');
            $table->date('date_work');
            $table->double('cost');
            $table->double('general_expenses');
            $table->bigInteger('type_job_id');
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
        Schema::dropIfExists('_orchard_works');
    }
}

