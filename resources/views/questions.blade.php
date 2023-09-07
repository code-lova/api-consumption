<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="delaclique designs test quiz, delaclique, designs, test tech skills ">
    <meta name="author" content="Delaclique Test quiz">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Delqclique Designs Quiz Test</title>
</head>
<body>
    <header>
        <div class="header">
            <h1>Test your tech skill</h1>
        </div>
    </header>
    <main>
        <div class="container-fluid">

            <div class="jumbotron">
              <h3>The big knowledge test!</h3>
              <p>How good is your general knowledge?</p>
            </div>

            <form action="" method="post">
                @csrf
                @foreach ($questions as $q)
                    <div class="card border-info mb-4 ">

                        <div class="d-flex justify-content-between align-items-center card-header bg-info text-white" id="h{{ $q->id }}">
                            <span>Question {{ $q->id }}</span>
                            <h6>{{ $q->category }}</h6>
                        </div>
                        <div id="q{{ $q->id }}" class="collapse show" aria-labelledby="h{{ $q->id }}">
                            <div class="card-body">
                            <p>{{ $q->question }}</p>

                                @if ($q->answer_a != Null)
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="q[{{ $q->id }}]" id="q{{ $q->id }}_r{{ $q->id }}" value="r1">
                                    <label class="form-check-label" for="q{{ $q->id }}_r1">
                                    {{ $q->answer_a }}
                                    </label>
                                </div>
                                @endif

                                @if ($q->answer_b != Null)
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="q[{{ $q->id }}]" id="q{{ $q->id }}_r{{ $q->id }}" value="r2">
                                    <label class="form-check-label" for="q{{ $q->id }}_r2">
                                        {{ $q->answer_b }}
                                    </label>
                                </div>
                                @endif

                                @if ($q->answer_c != Null)
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="q[{{ $q->id }}]" id="q{{ $q->id }}_r{{ $q->id }}" value="r3">
                                    <label class="form-check-label" for="q{{ $q->id }}_r3">
                                        {{ $q->answer_c }}
                                    </label>
                                </div>
                                @endif

                                @if ($q->answer_d != Null)
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="q[{{ $q->id }}]" id="q{{ $q->id }}_r{{ $q->id }}" value="r4">
                                    <label class="form-check-label" for="q{{ $q->id }}_r4">
                                        {{ $q->answer_d }}
                                    </label>
                                </div>
                                @endif

                                @if ($q->answer_e != Null)
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="q[{{ $q->id }}]" id="q{{ $q->id }}_r{{ $q->id }}" value="r5">
                                    <label class="form-check-label" for="q{{ $q->id }}_r5">
                                        {{ $q->answer_e }}
                                    </label>
                                </div>
                                @endif

                                @if ($q->answer_f != Null)
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="q[{{ $q->id }}]" id="q{{ $q->id }}_r{{ $q->id }}" value="r6">
                                    <label class="form-check-label" for="q{{ $q->id }}_r6">
                                        {{ $q->answer_f }}
                                    </label>
                                </div>
                                @endif

                            </div>

                        </div>
                    </div>
                @endforeach


                <h3>Click Submit to complete quiz</h3>

                <div class="card">
                  <div class="card-body">
                    <button type="submit" class="btn btn-success">Submit</button>
                  </div>
                </div>

            </form>
        </div>









    </main>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


</body>
</html>
