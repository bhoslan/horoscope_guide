import 'package:flutter/material.dart';
import 'package:horoscope_guide/route_generator.dart';

import 'burc_listesi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: BurcListesi(),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
