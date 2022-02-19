import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherForcast(),
    );
  }
}

Widget WeatherForcast() {
  return Scaffold(
    appBar: AppBar(
      elevation: 0,
      title: Text(
        "Weather Forcast",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 240, 56, 43),
    ),
    body: _bodyWeatherApp(),
  );
}

Widget _bodyWeatherApp() {
  return Container(
    color: Color.fromARGB(255, 240, 56, 43),
    padding: EdgeInsets.all(10),
    child: Column(children: [
      _searchCity(),
      _localName(),
      _weatherDescription(),
    ]),
  );
}

Widget _searchCity() {
  return Row(
    children: [
      Icon(
        Icons.search,
        color: Colors.white,
      ),
      SizedBox(
        width: 12,
      ),
      Text(
        "Enter City Name",
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}

Widget _localName() {
  return Container(
    margin: EdgeInsets.only(top: 30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Murmansk Oblast, RU",
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
            )),
        SizedBox(
          height: 10,
        ),
        Text("Friday, Mar 20, 2020",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            )),
      ],
    ),
  );
}

Widget _weatherDescription() {
  return Container(
    padding: EdgeInsets.only(top: 50),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.wb_sunny,
              color: Colors.white,
              size: 70,
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Row(
              children: [
                Text("14 F",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                    )),
              ],
            ),
            Row(
              children: [
                Text("LIGHT SHOW",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
