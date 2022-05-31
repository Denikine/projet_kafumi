// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myfirstapp/Shifumi/Rejoindre/ChoisirPseudo.dart';
import 'package:myfirstapp/Shifumi/CommentJouer/CommentJouer.dart';
import 'package:myfirstapp/Shifumi/Accueil.dart';
import 'package:myfirstapp/Shifumi/Data.dart';

class RejoindreLobby extends StatelessWidget {
static String routeName = '/JoinLobby';
final String title;
final String content;
final _textController = TextEditingController();
// ignore: use_key_in_widget_constructors
RejoindreLobby({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(236, 146, 107, 1),
      
      body: Center(
        child: Container(
          color: const Color.fromRGBO(236, 146, 107, 1),

          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.20)),

//--------------------------------------------------------------------------------------//
//------------------------- Kafumi + Code PIN + Bouton Valider -------------------------//
//--------------------------------------------------------------------------------------//

              Container(
                color: const Color.fromRGBO(236, 146, 107, 1),
                height: MediaQuery.of(context).size.height * 0.10,
                width: MediaQuery.of(context).size.width,
                child: const Text('KaFuMi', textAlign: TextAlign.center, overflow: 
                TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 75, color: Color.fromRGBO(33, 45, 64, 1)),)
              ),
              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05)),
              Container(
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromRGBO(236, 146, 107, 1),
                child: Column(
                  children: [
                    SizedBox(
                      width: 300.0, 
                      child: TextField(
                        controller: _textController,
                        decoration: const InputDecoration(
                          hintText: 'Code PIN du lobby',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02)),

                    SizedBox(
                      height: 60,
                      width: 300.0,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            ChoisirPseudo.routeName,
                            arguments: Data(
                              title: 'Envoyer des arguments',
                              content: 'Le contenu',
                            ),
                          );
                        },
                        color: const Color.fromRGBO(33, 45, 64, 1),
                        child: const Text('Valider', style: TextStyle(color: Colors.white)), 
                      ),
                    ),
                  ],
                ),
              ),

//----------------------------------------------------------------------------//
//------------------------- Accueil + Comment Jouer? -------------------------//
//----------------------------------------------------------------------------//

              Container(
                color: const Color.fromRGBO(33, 45, 64, 1),
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.1,
                      color: const Color.fromRGBO(33, 45, 64, 1),
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
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('image/Accueil.png'), fit: BoxFit.contain)
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.1,
                      color: const Color.fromRGBO(33, 45, 64, 1),
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
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('image/CommentJouer.png'), fit: BoxFit.contain)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}