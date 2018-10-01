<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBaseTabel extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('base', function (Blueprint $table) {
            $table->increments('PK', true);
            $table->string('nam_id', 5);
            $table->integer('a_id')->unsigned();
            $table->integer('p_id')->unsigned();
     

            $table->date('d_1');
            $table->string('year', 4);
            $table->string('isstatus', 1);
            $table->string('comfirm', 1);
            $table->date('d_com');
            $table->string('send', 1);
            $table->date('d_send');
            $table->string('isstatus_send', 1);
            $table->string('isstatus_post', 1);
            $table->date('d_pos');
            $table->string('isstatus_f', 1);
            $table->date('d_f');
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
        Schema::dropIfExists('base');
    }
}
