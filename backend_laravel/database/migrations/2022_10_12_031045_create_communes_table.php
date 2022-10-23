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
        Schema::create('communes', function (Blueprint $table) {
            $table->string('nomcommune');
            $table->primary('nomcommune');
            $table->integer('nombre_electeur');
            $table->string('nomregion');
            $table->foreign('nomregion')->references('nomregion')->on('regions')->onDelete('cascade');
            $table->string('nomdepartement');
            $table->foreign('nomdepartement')->references('nomdepartement')->on('departements')->onDelete('cascade');
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
        Schema::dropIfExists('communes');
    }
};
