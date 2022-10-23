<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('electeurs', function (Blueprint $table) {
            $table->biginteger('id');
            $table->primary('id');
            $table->string('prenom');
            $table->string('nom');
            $table->string('email')->unique();
            $table->date('datenaissance');
            $table->string('commune');
            $table->foreign('commune')->references('nomcommune')->on('communes')->onDelete('cascade');
            $table->string('password');
            //$table->timestamps('created_at');
            Schema::enableForeignKeyConstraints();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('electeurs');
    }
};
