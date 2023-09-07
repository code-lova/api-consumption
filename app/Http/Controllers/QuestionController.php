<?php

namespace App\Http\Controllers;

use App\Models\Question;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class QuestionController extends Controller
{
    public function fetchInsert(){
        $makeRequest = Http::get('https://quizapi.io/api/v1/questions', [
            'apiKey' => 'jWxxAYM6KZVuj59xXGksd6KDsPfC2K1Ed3PyqisY',
            'limit' => 10
        ]);
        $question = json_decode($makeRequest->body());
        foreach($question as $quiz){
            $q = new Question();
            $q->question = $quiz->question;
            $q->answer_a = $quiz->answers->answer_a;
            $q->answer_b = $quiz->answers->answer_b;
            $q->answer_c = $quiz->answers->answer_c;
            $q->answer_d = $quiz->answers->answer_d;
            $q->answer_e = $quiz->answers->answer_e;
            $q->answer_f = $quiz->answers->answer_f;
            $q->answer_a_correct = $quiz->correct_answers->answer_a_correct;
            $q->answer_b_correct = $quiz->correct_answers->answer_b_correct;
            $q->answer_c_correct = $quiz->correct_answers->answer_c_correct;
            $q->answer_d_correct = $quiz->correct_answers->answer_d_correct;
            $q->answer_e_correct = $quiz->correct_answers->answer_e_correct;
            $q->answer_f_correct = $quiz->correct_answers->answer_f_correct;
            $q->difficulty = $quiz->difficulty;
            $q->category = $quiz->category;
            $q->save();
        }
        return  "Quiz data added successfully.. HURRAY..!!!";
    }



    public function show(){
        $data['questions'] = Question::all()->random(10);
        return view('questions', $data);
    }
}
