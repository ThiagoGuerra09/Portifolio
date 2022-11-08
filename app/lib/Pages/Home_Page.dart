import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomePageItemState();
}

class _HomePageItemState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromARGB(255, 22, 25, 28),
              Color.fromARGB(255, 107, 104, 105)
            ],
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Column(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Thiago Guerra"),
                        Text(
                          "Desenvolvedor Mobile",
                          style: TextStyle(color: Colors.white, fontSize: 9.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Sobre mim"),
                  Text("Experiências"),
                  Text("Tecnologias"),
                  Text("Contatos")
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
