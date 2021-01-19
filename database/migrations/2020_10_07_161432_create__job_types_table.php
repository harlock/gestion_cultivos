<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Job_types', function (Blueprint $table) {
            $table->id();
            $table->string('job_type');
            $table->timestamps();
        });
        DB::table('Job_types')->insert([
            ['job_type'=>'Poda'],
            ['job_type'=>'Riego'],
            ['job_type'=>'Control de malezas'],
            ['job_type'=>'Control de plagas'],
            ['job_type'=>'Fertilizacion'],
            ['job_type'=>'Cosecha'],
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('_job_types');
    }
}


