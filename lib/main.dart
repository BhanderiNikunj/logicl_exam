import 'package:exam/AddScreen.dart';
import 'package:exam/HomePage.dart';
import 'package:exam/ModalClass.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/':(context) => Home(),
        'add':(context) => Add(),
      },
    ),
  );
}


