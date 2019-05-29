<!doctype html>
<html lang="sk">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Zadanie č.7</title>

    <!-- Google maps -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC54XocMC7NcP8PC6EIymtswdrUcH4NKy0"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.simpleWeather/3.1.0/jquery.simpleWeather.min.js" integrity="sha256-wtpHIDmNnfxYghVz24dUrG09HT6mEmicyU8fuj7I2hU=" crossorigin="anonymous"></script>

    <!-- Popper and bootstrap -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- Datatables -->
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" crossorigin="anonymous">


    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

    <script src="script.js"></script>



</head>

<style>
    .no-close .ui-dialog-titlebar-close {
        display: none;
    }

    #footer {
        position:absolute;
        bottom:0;
        width:100%;
        height:60px;   /* Height of the footer */

    }
    .jumbotron {
        position:relative;
        min-height: 100vh;
    }
    body{
        background: url("background.jpg") no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
        /*vh - viewport height*/
        height: 100vh;
    }
</style>

<body >

    <nav class="fixed-top navbar navbar-expand-lg navbar-blue bg-dark">
        <a class="navbar-brand" disabled href="" >Zadanie č.7</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#" onclick="loadWeatherForecast()">Predpoveď počasia <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="loadVisitorDetails()">Údaje o návštevníkovi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="loadStats()">Štatistiky</a>
                </li>
            </ul>
        </div>
    </nav>



    <div class="jumbotron" style="width: 80%; margin: 0 auto;">

        <div id="container" style="width: 60%; margin: 0 auto;text-align: center;">
        </div>



    </div>

    <div id="footer" class="footer">

        <footer class="fixed-bottom font-small text-primary bg-dark" >

            <!-- Copyright -->
            <div class="footer-copyright text-center py-3">© 2018 Copyright:
                <a href="http://matusklement.sk/je/to/frajer">  Klemo  </a>
            </div>
            <!-- Copyright -->

        </footer>

    </div>


</body>
</html>