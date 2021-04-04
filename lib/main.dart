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
