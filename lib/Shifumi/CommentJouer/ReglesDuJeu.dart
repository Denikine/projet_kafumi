// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myfirstapp/Shifumi/CommentJouer/CommentJouer.dart';
import 'package:myfirstapp/Shifumi/Data.dart';
import 'CommentJouer.dart';

class ReglesDuJeu extends StatelessWidget {
  static String routeName = '/RegleDuJeu';
  final String title;
  final String content;

  const ReglesDuJeu({Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(236, 146, 107, 1),
      body: Center(
        child: Container(
          color: const Color.fromRGBO(236, 146, 107, 1),
          child: Column(
            children: [
              Container(
                  color: const Color.fromRGBO(236, 146, 107, 1),
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    'KaFuMi',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 75,
                        color: Color.fromRGBO(33, 45, 64, 1)),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05)),
              Container(
                  color: const Color.fromRGBO(236, 146, 107, 1),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    'Règles du jeu',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color.fromRGBO(33, 45, 64, 1)),
                  )),
              Container(
                height: MediaQuery.of(context).size.height * 0.68,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromRGBO(236, 146, 107, 1),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.66,
                      width: MediaQuery.of(context).size.width * 0.75,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(color: Colors.black, blurRadius: 2.0)
                        ],
                        border: Border.all(
                            color: const Color.fromRGBO(33, 45, 64, 1),
                            width: 1.0),
                        color: const Color.fromRGBO(236, 146, 107, 1),
                      ),
                      child: Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.02)),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0471,
                            child: const Text(
                                '• Vous jouez contre l\'ordinateur.',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromRGBO(33, 45, 64, 1))),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0471,
                            child: const Text(
                                '• Dans un délai de quelques secondes,',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromRGBO(33, 45, 64, 1))),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0471,
                            child: const Text(
                                'vous devez faire un choix entre pierre,',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromRGBO(33, 45, 64, 1))),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0471,
                            child: const Text('feuille et ciseaux.',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromRGBO(33, 45, 64, 1))),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0471,
                            child: const Text(
                                '• Votre résultat est comparé à celui',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromRGBO(33, 45, 64, 1))),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0471,
                            child: const Text('de l\'ordinateur.',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromRGBO(33, 45, 64, 1))),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0471,
                            child: const Text(
                                '• Le gagnant est celui qui a joué le coup',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromRGBO(33, 45, 64, 1))),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0471,
                            child: const Text(
                                ' qui contre le coup de l\'autre.',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromRGBO(33, 45, 64, 1))),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02)),
                  ],
                ),
              ),
              Container(
                color: const Color.fromRGBO(236, 146, 107, 1),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.98,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      CommentJouer.routeName,
                      arguments: Data(
                        title: 'Envoyer des arguments',
                        content: 'Le contenu',
                      ),
                    );
                  },
                  child: const Image(
                      image: AssetImage('image/Retour.png'),
                      alignment: Alignment.center,
                      fit: BoxFit.contain),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02)),
            ],
          ),
        ),
      ),
    );
  }
}
