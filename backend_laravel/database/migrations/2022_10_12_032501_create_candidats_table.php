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
        Schema::create('candidats', function (Blueprint $table) {
            $table->integer('id');
            $table->primary('id')->Increments();
            $table->biginteger('CNI')->unique();
            $table->foreign('CNI')->references('id')->on('electeurs')->onDelete('cascade');
            $table->string('prenom');
            $table->string('nom');
            $table->date('datenaissance');
            $table->string('commune');
            $table->foreign('commune')->references('nomcommune')->on('communes')->onDelete('cascade');
            $table->string('nomparti');
            $table->string('identification');
            //$table->timestamps();

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
        Schema::dropIfExists('candidats');
    }
};
