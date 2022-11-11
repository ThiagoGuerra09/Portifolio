import 'package:app/Pages/Contacts_Page.dart';
import 'package:app/Pages/Home_Page.dart';
import 'package:app/Pages/Tecnology_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
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
                      Text("Experiências", style: TextStyle(fontSize: 28.0))
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
                              "---Março/2022 - Outubro: Geosol Geologia e Sondagens S/A\nEmpresa especializada em sondagens no solo.\nCargo:Estagiário de Desenvolvimento com foco em IA",
                              style: TextStyle(fontSize: 18.0, height: 1.5),
                            ),
                            Text("-Desenvolvimento de aplicações em Python",
                                style: TextStyle(fontSize: 18.0, height: 1.5)),
                            Text(
                                "-Participação em projetos de desenvolvimento e inovação ",
                                style: TextStyle(fontSize: 18.0, height: 1.5)),
                            Text(
                              "-Automação de processos com Python",
                              style: TextStyle(fontSize: 18.0, height: 1.5),
                            ),
                            Text(
                                "-Participação em projetos que visam a implementação de inteligência artifical ",
                                style: TextStyle(fontSize: 18.0, height: 1.5)),
                            Text(
                                "---Outubro/2022 - até o momento: Framework Digital: Empresa especializada em desenvolvimento de software\nCargo:Estagiário de Desenvolvimento Mobile\n-Desenvolvimento em Flutter",
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
