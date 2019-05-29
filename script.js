var ip,lat,lon,capital,countryCode,country,city,nativeCountry;

/* same as document.ready function*/
$(function() {
    var xmlhttp = new XMLHttpRequest();
    var url = 'http://ip-api.com/json';

    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var result = JSON.parse(this.responseText);
            console.log('Visitor details: ' + result.query);
            ip = result.query;
            lat = result.lat;
            lon = result.lon;
            countryCode = result.countryCode;
            country = result.country;
            city = result.city;
            setCapitalCity(countryCode);
            loadWeatherForecast();
        }
    };
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
    loadWeatherForecast();
});


function setCapitalCity(countryCode) {
    var xmlhttp = new XMLHttpRequest();
    var url = "https://restcountries.eu/rest/v2/alpha/" + countryCode;

    xmlhttp.onreadystatechange = function () {
      if(this.readyState == 4 && this.status == 200){
          var result = JSON.parse(this.responseText);
          console.log('Country details : ' + result);
          capital = result.capital;
          nativeCountry = result.nativeName;
      }
    };
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
}

//Post data to server database
function serverPost(page){
    if (city == null){
        ip = 'neidentifikované';
        city = 'neidentifikované';
        data = {
            'ip': ip,
            'country':'N/A',
            'countryCode':'N/A',
            'city':city,
            'page':page
        };
    }
    else{
        data = {
            'ip':ip,
            'country':country,
            'countryCode':countryCode,
            'city':city,
            'lat':lat,
            'lon':lon,
            'page':page
        };
    }
    console.log('Posting data to server...\n');
    console.log('Tried to post: '+page);
/*Uncomment when ready*/
    $.post('http://147.175.121.210:8071/Zadanie7/server.php',JSON.stringify(data),
        function (data) {
          console.log('Data posted successfully\n');
          console.log(data);
        }).fail(function(errorMsg){
            console.log('Server call failed \n '+ errorMsg);
    });/**/
}

function setVisitorDetails(){
    if(city == null) city = '- Mesto sa nedá lokalizovať -';
    $("#ipaddr").text(ip);
    $("#gpscoords").text(lat + " , " + lon);
    $("#city").text(city);
    $("#country").html(country + '('+  nativeCountry + ')' + "<br><br><img height='60' width='90' src=http://www.geonames.org/flags/x/" + countryCode.toLowerCase() + ".gif>");
    setCapitalCity(countryCode);
    $("#capital").text(capital);
}

function weatherInit(location,WOEID){
        var cityID,html;
        $.getJSON( "city.list.json", function( data ) {
            var html,found = false;

                for(var i = 0; i < data.length ; i++){
                if (data[i].name == city && data[i].country == countryCode){
                    cityID = data[i].id;
                        html = '<h4>Predpoveď počasia</h4>' +
                            '<hr><br><div id="openweathermap-widget-11" class="align-center" style="margin-left: -13%"></div>' +
                        "<script src='//openweathermap.org/themes/openweathermap/assets/vendor/owm/js/d3.min.js'></script>" +
                        "<script>window.myWidgetParam ? window.myWidgetParam : window.myWidgetParam = [];  window.myWidgetParam.push({id: 11,cityid: " + cityID + ",appid: '2f73b483e033f431a3fc61b0a73f2b5c',units: 'metric',containerid: 'openweathermap-widget-11',  });  (function() {var script = document.createElement('script');script.async = true;script.charset = 'utf-8';script.src = '//openweathermap.org/themes/openweathermap/assets/vendor/owm/js/weather-widget-generator.js';var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(script, s);  })();</script>";
                    found = true;
                }
            }
                if(found == false)
                    html = '<h4>Error : Mesto sa nenachádza v databáze počasia</h4>';

                $('#container').html(html);
        });
}

function loadCustomersByCountry(){
    //Call server to get data[] {country,countryCode,countryVisitsforCountry}
    console.log('Server call...\n');
    $.get( "http://147.175.121.210:8071/Zadanie7/server.php?service=1", function(data) {
        console.log('Server call made successfully\n');

        var parsedData = JSON.parse(data);

        var html=    '<h4>Tabuľka návštev podľa štátov:</h4><br>' +
            '<table id="myTable" class="display" style="width:100%">' +
            '<thead><tr><th>Štát</th><th>Vlajka</th><th>Počet</th></tr></thead>'+
            '<tbody>';


        for(var i=0; i<parsedData.length; i++){

            var url = "http://www.geonames.org/flags/x/" + parsedData[i].country_code.toLowerCase() + ".gif";

            html+='<tr>' +
                  '<td>' + parsedData[i].country + '</td>' +
                  '<td>  <img height="30" width="45" src='+ url +' >  </td>' +
                  '<td>' + parsedData[i].count + '</td>' +
                  '</tr>';

        }
        html+='</tbody></table>';
        $('#container').append(html);
        //Datatable initialize
        $('#myTable').DataTable({
            "paging":    false,
            "info":      false,
            "searching": false,
            "columns":[
                {"sortable": true},
                {"sortable": false},
                {"sortable": true}
            ]
        });
    //Continues to next elements
    loadMap();
    loadTables();

    }).fail(function(errorMsg) {
        console.log('Server call failed \n '+ errorMsg);
    })
}


function loadMap() {

    function addMarker(Lat,Lng,ip) {
        var location = new google.maps.LatLng(Lat, Lng);
        marker = new google.maps.Marker({
            position: location,
            map: map,
            title: ip
        });
    }


    var html = '<br><hr><h4>Mapa lokalít prihlásení</h4>' +
        '<div id="googleMap" style="width:100%;height:400px; margin-top: 30px;margin-bottom: 60px"></div>';
        $('#container').append(html);

    var mapProp = {
        center:new google.maps.LatLng(lat,lon),
        zoom:4,
    };
    var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

    $.get( "http://147.175.121.210:8071/Zadanie7/server.php?service=2", function(data) {
        var parsedData = JSON.parse(data);

        //Add markers
        for(var i=0; i<parsedData.length; i++){
            addMarker(parsedData[i].lat,parsedData[i].lon,parsedData[i].ip);
        }


    }).fail(function(errorMsg) {
        console.log('Server call failed \n '+ errorMsg);
    });
}

function loadTables(){
    console.log('Server call...\n');

    $.get("http://147.175.121.210:8071/Zadanie7/server.php?service=3", function(data) {
            //var html = '<br><hr><h4>Návštevy jednotlivých stránok</h4>';
            var parsedData = JSON.parse(data);


            var html=    '<hr><h4>Návštevy jednotlivých stránok:</h4><br>' +
                '<table id="myTable1" class="display" style="width:100%;margin-bottom: 60px">' +
                '<thead><tr><th>Stránka</th><th>Počet návštev</th></tr></thead>'+
                '<tbody>';

            var pages = ["Štatistiky", "Údaje o návštevníkovi", "Predpoveď počasia"];

            for(var i=0; i<parsedData.length; i++){
                html+='<tr>' +
                    '<td>' + pages[i] + '</td>' +
                    '<td>' + parsedData[i].visits + '</td>' +
                    '</tr>';
            }
            html+='</tbody></table>';
            $('#container').append(html);
            //Datatable initialize
            $('#myTable1').DataTable({
                "paging":    false,
                "info":      false,
                "searching": false,
                "columns":[
                    {"sortable": true},
                    {"sortable": false},

                ]
            });
    }
    ).fail(function (errorMsg){
        console.log('Server call failed \n '+ errorMsg);
    });

    $.get("http://147.175.121.210:8071/Zadanie7/server.php?service=4", function(data) {

            var parsedData = JSON.parse(data);
            console.log(parsedData[0].time);

            var html=    '<hr><h4>Návštevy podľa času:</h4><br>' +
                '<table id="myTable2" class="display" style="width:100%;margin-bottom: 60px">' +
                '<thead><tr><th>6:00 - 15:00</th><th>15:00 - 21:00</th><th>21:00 - 24:00</th><th>24:00 - 6:00</th></tr></thead>'+
                '<tbody>';

            //divide data into time parts
            var time1 = 0,time2 = 0,time3 = 0,time4 = 0;

            for(var i=0; i<parsedData.length; i++){
                if(parsedData[i].time < '06:00:00')
                    time4++;
                else if(parsedData[i].time < '15:00:00')
                    time1++;
                else if(parsedData[i].time < '21:00:00')
                    time2++;
                else
                    time3++;

            }


                html+='<tr>' +
                    '<td>' + time1 + '</td>' +
                    '<td>' + time2 + '</td>' +
                    '<td>' + time3 + '</td>' +
                    '<td>' + time4 + '</td>' +
                    '</tr>';

            html+='</tbody></table>';
            $('#container').append(html);
            //Datatable initialize
            $('#myTable2').DataTable({
                "paging":    false,
                "info":      false,
                "searching": false,
                "columns":[
                    {"sortable": false},
                    {"sortable": false},

                ]
            });
        }
    ).fail(function (errorMsg){
        console.log('Server call failed \n '+ errorMsg);
    });
}


//Visitor details subpage
function loadVisitorDetails(){
    var html;
    html = '<h2>Detaily návštevníka</h2><br><hr><br>' +
           '<h3>IP adresa:</h3>' +
            '<div id="ipaddr"></div>' +
            '<h3>GPS súradnice:</h3>' +
            '<div id="gpscoords"></div>' +
            '<h3>Mesto:</h3>' +
            '<div id="city"></div>\n' +
            '        <hr>' +
            '<h3>Štát:</h3>\n' +
            '    <div id="country"></div>\n' +
            '        <h3>Hlavné mesto:</h3>\n' +
            '    <div id="capital"></div>';

    $('#container').html(html);
    setVisitorDetails();
    serverPost('visitor_details');
}

//Stats subpage
function loadStats(){

    $('#container').html('<h2>Štatistické údaje</h2><br><hr><br>');

    loadCustomersByCountry();
    serverPost('stats');
}

//Forefast subpage
function loadWeatherForecast(){
    weatherInit(lat +','+ lon);
    serverPost('weather');
}


