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
      title: const Text(
        "Weather Forcast",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 240, 56, 43),
    ),
    body: _bodyWeatherApp(),
  );
}

Widget _bodyWeatherApp() {
  return Container(
    color: const Color.fromARGB(255, 240, 56, 43),
    padding: const EdgeInsets.all(10),
    child: Column(children: [
      _searchCity(),
      _localName(),
      _weatherDescription(),
      SizedBox(
        height: 50,
      ),
      _addInformation(),
      SizedBox(
        height: 40,
      ),
      _titleForListView(),
      SizedBox(
        height: 15,
      ),
      _listViewForCast(),
    ]),
  );
}

Widget _searchCity() {
  return Row(
    children: [
      const Icon(
        Icons.search,
        color: Colors.white,
      ),
      const SizedBox(
        width: 12,
      ),
      const Text(
        "Enter City Name",
        style: const TextStyle(color: Colors.white),
      ),
    ],
  );
}

Widget _localName() {
  return Container(
    margin: const EdgeInsets.only(top: 30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Murmansk Oblast, RU",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 35,
            )),
        const SizedBox(
          height: 10,
        ),
        const Text("Friday, Mar 20, 2020",
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
    padding: const EdgeInsets.only(top: 50),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const Icon(
              Icons.wb_sunny,
              color: Colors.white,
              size: 70,
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Row(
              children: [
                const Text("14 °F",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                    )),
              ],
            ),
            Row(
              children: [
                const Text("LIGHT SHOW",
                    style: const TextStyle(
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

Widget _addInformation() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          const Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "5",
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          const Text(
            "km/hr",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      Column(
        children: [
          const Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "3",
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
          const Text(
            "%",
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
      Column(
        children: [
          const Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "20",
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
          const Text(
            "%",
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    ],
  );
}

Widget _titleForListView() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "7-DAY WEATHER FORCAST",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    ],
  );
}

Widget _listViewForCast() {
  final List weekDays = [
    "Friday",
    "Satuday",
    "Sanday",
    "Monday",
    "Tuesday",
    "Wendsday",
    "Thursday"
  ];

  return SizedBox(
    height: 100,
    child: ListView(
      itemExtent: 140,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: [
        Card(
          color: Color.fromARGB(115, 226, 151, 151),
          child: ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  weekDays[0],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "5 °F",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 30,
                  ),
                ]),
              ],
            ),
          ),
        ),
        Card(
          color: Color.fromARGB(115, 226, 151, 151),
          child: ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  weekDays[1],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "22 °F",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 30,
                  ),
                ]),
              ],
            ),
          ),
        ),
        Card(
          color: Color.fromARGB(115, 226, 151, 151),
          child: ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  weekDays[2],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "17 °F",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 30,
                  ),
                ]),
              ],
            ),
          ),
        ),
        Card(
          color: Color.fromARGB(115, 226, 151, 151),
          child: ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  weekDays[3],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "11 °F",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 30,
                  ),
                ]),
              ],
            ),
          ),
        ),
        Card(
          color: Color.fromARGB(115, 226, 151, 151),
          child: ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  weekDays[4],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "14 °F",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 30,
                  ),
                ]),
              ],
            ),
          ),
        ),
        Card(
          color: Color.fromARGB(115, 226, 151, 151),
          child: ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  weekDays[5],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "17 °F",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 30,
                  ),
                ]),
              ],
            ),
          ),
        ),
        Card(
          color: Color.fromARGB(115, 226, 151, 151),
          child: ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  weekDays[6],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "15 °F",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 30,
                  ),
                ]),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
