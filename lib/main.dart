import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Contador de Pessoas',
      home: Stack(
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
                "Pessoas: 0",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {},
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
                        onPressed: () {},
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
                "Pode entrar",
                style: TextStyle(
                  color: Colors.green,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      )));
}
