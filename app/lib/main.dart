import 'package:app/Pages/Home_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thiago Guerra W. Felipe',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.amber,
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 253, 253),
      ),
      home: HomeScreen(title: 'Portifolio Thiago Guerra '),
    );
  }
}
