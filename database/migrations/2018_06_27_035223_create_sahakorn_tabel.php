<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSahakornTabel extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sahakorn', function (Blueprint $table) {
            $table->increments('PK', true);
            $table->integer('a_id')->unsigned();
            $table->integer('p_id')->unsigned();
            $table->string('nam_id', 5);
            $table->string('year', 4);
            $table->string('isstatus', 1);
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
        Schema::dropIfExists('sahakorn');
    }
}
