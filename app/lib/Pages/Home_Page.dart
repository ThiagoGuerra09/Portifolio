import 'dart:html';

import 'package:app/Pages/Tecnology_Page.dart';
import 'package:app/Pages/Experience_Page.dart';
import 'package:flutter/material.dart';

import 'Contacts_Page.dart';

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
        preferredSize: Size.fromHeight(70),
        child: Container(
          // height: 100000,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 22, 25, 28),
                Color.fromRGBO(107, 104, 105, 1)
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
                          Text(
                            "Thiago Guerra",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Desenvolvedor Mobile",
                            style:
                                TextStyle(color: Colors.white, fontSize: 13.0),
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
                    TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(
                                  title: "Thiago Guerra",
                                ),
                              ));
                        },
                        child: Text("Sobre mim")),
                    TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ExperiencePage(),
                              ));
                        },
                        child: Text("Experiências")),
                    TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TecnologyPage(),
                              ));
                        },
                        child: Text("Tecnologias")),
                    TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ContactsPage(),
                              ));
                        },
                        child: Text("Contatos")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(237, 150, 9, 0.995),
            height: 80,
            width: 2000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Sobre mim", style: TextStyle(fontSize: 28.0))
                    ]),
              ],
            ),
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          width: 200,
                          height: 200,
                          child: ClipRRect(
                            child: Image.asset("images/Eu.jfif"),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(300)),
                          )),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 15),
                        margin: const EdgeInsets.all(10),
                        width: 500,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Olá, sou o Thiago Guerra tenho 19 anos, facilidade em relacionamento interpessoal, boa oratória e muita proatividade em encarar novos desafios. Atualmente estou cursando o 4º período de Ciências da Computação na PUC Minas💻.",
                                style: TextStyle(fontSize: 18.0, height: 1.5)),
                            Text(
                                "-Profissional dinâmico e engajado no aprendizado de novas tecnologias.",
                                style: TextStyle(fontSize: 18.0, height: 1.5)),
                            Text(
                                "-Facilidade em trabalhar em equipe e de lidar com pessoas.",
                                style: TextStyle(fontSize: 18.0, height: 1.5)),
                            Text(
                                "-Tenho conhecimento em front-end e em back-end.",
                                style: TextStyle(fontSize: 18.0, height: 1.5)),
                            Text("-Inglês intermediário/avançado.",
                                style: TextStyle(fontSize: 18.0, height: 1.5)),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
