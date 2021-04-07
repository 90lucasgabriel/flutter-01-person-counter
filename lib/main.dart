import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Contador de Pessoas',
    home: Column(
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
            TextButton(
              onPressed: () {},
              child: Text(
                "-1",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "+1",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
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
  ));
}
