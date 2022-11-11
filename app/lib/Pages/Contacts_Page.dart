import 'package:app/Pages/Tecnology_Page.dart';

import 'package:app/Pages/Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:app/Pages/Experience_Page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
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
                      Text("Contatos", style: TextStyle(fontSize: 28.0))
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
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.github),
                                Text(" ThiagoGuerra09",
                                    style:
                                        TextStyle(fontSize: 18.0, height: 1.5)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.linkedin),
                                Text(
                                    "  https://www.linkedin.com/in/ThiagoGuerraWFelipe/",
                                    style:
                                        TextStyle(fontSize: 18.0, height: 1.5)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.phone),
                                Text("  55 31 99665-8018",
                                    style:
                                        TextStyle(fontSize: 18.0, height: 1.5)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.mail),
                                Text("  Thiagogwf@gmail.com",
                                    style:
                                        TextStyle(fontSize: 18.0, height: 1.5)),
                              ],
                            ),
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
