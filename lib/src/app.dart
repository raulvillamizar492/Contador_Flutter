import 'package:flutter/material.dart';
import 'package:flutter_application/src/pages/contador.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: contador(),
          //child: HomePage(),
        ));
  }
}
