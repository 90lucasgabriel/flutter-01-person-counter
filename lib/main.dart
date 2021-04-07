import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Contador de Pessoas',
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = "Pode Entrar";

  void _changePeople(int value) {
    setState(() {
      _people += value;
      _changeInfo();
    });
  }

  void _changeInfo() {
    if (_people < 0) {
      setState(() {
        _infoText = "Mundo invertido";
      });
      return;
    }

    if (_people <= 10) {
      setState(() {
        _infoText = "Pode Entrar";
      });
      return;
    }

    setState(() {
      _infoText = "Lotado!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpeg",
          fit: BoxFit.cover,
          height: 10000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_people",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.all(10),
                    child: TextButton(
                      onPressed: () {
                        _changePeople(-1);
                      },
                      child: Text(
                        "-1",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: TextButton(
                      onPressed: () {
                        _changePeople(1);
                      },
                      child: Text(
                        "+1",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    )),
              ],
            ),
            Text(
              _infoText,
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
