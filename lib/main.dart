import 'package:flutter/material.dart';
import 'package:solid_test/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.start(),
      routes: Routes.getRoutes(),
    );
  }
}

