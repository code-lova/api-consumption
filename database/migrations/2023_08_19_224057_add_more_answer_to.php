<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('questions', function (Blueprint $table) {
            $table->string('answer_d')->nullable()->after('answer_c');
            $table->string('answer_e')->nullable()->after('answer_c');
            $table->string('answer_f')->nullable()->after('answer_c');
            $table->string('answer_a_correct')->nullable()->after('answer_c');
            $table->string('answer_b_correct')->nullable()->after('answer_c');
            $table->string('answer_c_correct')->nullable()->after('answer_c');
            $table->string('answer_d_correct')->nullable()->after('answer_c');
            $table->string('answer_e_correct')->nullable()->after('answer_c');
            $table->string('answer_f_correct')->nullable()->after('answer_c');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('questions', function (Blueprint $table) {
            $table->dropColumn('answer_d');
            $table->dropColumn('answer_e');
            $table->dropColumn('answer_f');
            $table->dropColumn('answer_a_correct');
            $table->dropColumn('answer_b_correct');
            $table->dropColumn('answer_c_correct');
            $table->dropColumn('answer_d_correct');
            $table->dropColumn('answer_e_correct');
            $table->dropColumn('answer_f_correct');
        });
    }
};
