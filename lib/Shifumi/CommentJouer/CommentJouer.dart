// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myfirstapp/Shifumi/CommentJouer/RegleCreerPartie.dart';
import 'package:myfirstapp/Shifumi/CommentJouer/RegleRejoindrePartie.dart';
import 'package:myfirstapp/Shifumi/CommentJouer/ReglesDuJeu.dart';
import 'package:myfirstapp/Shifumi/Accueil.dart';
import 'package:myfirstapp/Shifumi/Data.dart';

class CommentJouer extends StatelessWidget {
static String routeName = '/JoinCommentJouer';
final String title;
final String content;
// ignore: use_key_in_widget_constructors
const CommentJouer({required this.title, required this.content});

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
                child: const Text('')
              ),
              Container(
                color: const Color.fromRGBO(236, 146, 107, 1),
                height: MediaQuery.of(context).size.height * 0.10,
                width: MediaQuery.of(context).size.width,
                child: const Text('KaFuMi', textAlign: TextAlign.center, overflow: 
                TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 75, color: Color.fromRGBO(33, 45, 64, 1)),)
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromRGBO(236, 146, 107, 1),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1)),
                    Container(
                      decoration: BoxDecoration(
                         boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 5.0)],
                         border: Border.all(color: const Color.fromRGBO(33, 45, 64, 1), width: 1.0),
                         color: const Color.fromRGBO(236, 146, 107, 1),
                      ),
                      height: MediaQuery.of(context).size.height * 0.10,
                      width: 300.0,

                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            RegleCreerPartie.routeName,
                            arguments: Data(
                              title: 'Envoyer des arguments',
                              content: 'Le contenu',
                            ),
                          );
                        },
                        color: const Color.fromRGBO(236, 146, 107, 1),
                        child: const Text('Créer une partie', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromARGB(255, 33, 45, 64))), 
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05)),
                    Container(
                      decoration: BoxDecoration(
                         boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 5.0)],
                         border: Border.all(color: const Color.fromRGBO(33, 45, 64, 1), width: 1.0),
                         color: const Color.fromRGBO(236, 146, 107, 1),
                      ),
                      height: MediaQuery.of(context).size.height * 0.10,
                      width: 300.0,
                      
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            RegleRejoindrePartie.routeName,
                            arguments: Data(
                              title: 'Envoyer des arguments',
                              content: 'Le contenu',
                            ),
                          );
                        },
                        
                        child: const Text('Rejoindre une partie', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromARGB(255, 33, 45, 64))), 
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05)),
                    Container(
                      decoration: BoxDecoration(
                         boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 5.0)],
                         border: Border.all(color: const Color.fromRGBO(33, 45, 64, 1), width: 1.0),
                         color: const Color.fromRGBO(236, 146, 107, 1),
                      ),
                      height: MediaQuery.of(context).size.height * 0.10,
                      width: 300.0,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            ReglesDuJeu.routeName,
                            arguments: Data(
                              title: 'Envoyer des arguments',
                              content: 'Le contenu',
                            ),
                          );
                        },
                        color: const Color.fromRGBO(236, 146, 107, 1),
                        child: const Text('Règles du jeu', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromARGB(255, 33, 45, 64))), 
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15)),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Accueil.routeName,
                      arguments: Data(
                        title: 'Envoyer des arguments',
                        content: 'Le contenu',
                      ),
                    );
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('image/AccueilNoir.png'), fit: BoxFit.contain)
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}