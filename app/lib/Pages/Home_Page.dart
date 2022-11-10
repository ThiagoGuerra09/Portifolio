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
        preferredSize: Size.fromHeight(70),
        child: Container(
          // height: 100000,
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
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 80,
            width: 2000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Portifólio Pessoal",
                          style: TextStyle(fontSize: 28.0))
                    ]),
              ],
            ),
          ),
          Row(
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
                      color: Color.fromARGB(255, 178, 178, 173),
                      width: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Olá, sou o Thiago Guerra tenho 19 anos, facilidade em relacionamento interpessoal, boa oratória e muita proatividade em encarar novos desafios. Atualmente estou cursando o 4º período de Ciências da Computação na PUC Minas💻.",
                              style: TextStyle(fontSize: 18.0)),
                          Text(
                              "-Profissional dinâmico e engajado no aprendizado de novas tecnologias.",
                              style: TextStyle(fontSize: 18.0)),
                          Text(
                              "-Facilidade em trabalhar em equipe e de lidar com pessoas.",
                              style: TextStyle(fontSize: 18.0)),
                          Text(
                              "-Tenho conhecimento em front-end e em back-end.",
                              style: TextStyle(fontSize: 18.0)),
                          Text("-Inglês intermediário/avançado.",
                              style: TextStyle(fontSize: 18.0)),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
