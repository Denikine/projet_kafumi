// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myfirstapp/Shifumi/Rejoindre/RejoindreLobby.dart';
import 'package:myfirstapp/Shifumi/Data.dart';
import 'Lobby.dart';

class ChoisirPseudo extends StatelessWidget {
static String routeName = '/JoinPseudo';
final String title;
final String content;
final _textController = TextEditingController();

  ChoisirPseudo({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(236, 146, 107, 1),
      
      body: Center(
        child: Container(
          color: const Color.fromRGBO(236, 146, 107, 1),

          child: Column(
            children: [

//-----------------------------------------------------------------//
//------------------------- Bouton Retour -------------------------//
//-----------------------------------------------------------------//
  
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
                width: MediaQuery.of(context).size.width,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      RejoindreLobby.routeName,
                      arguments: Data(
                        title: 'Envoyer des arguments',
                        content: 'Le contenu',
                      ),
                    );
                  },
                  child: const Image(image:AssetImage('image/Retour.png'),alignment: Alignment.topLeft,  fit: BoxFit.contain),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1)),
              
//-----------------------------------------------------------------------------//
//------------------------- Kafumi + Pseudo + Valider -------------------------//
//----------------------------------------------------------------------------//

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
                          hintText: 'Choisir un pseudo',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                    const Padding(padding: EdgeInsets.only(top: 15)),

                    Container(
                      height: 60,
                      width: 300.0,
                      color: const Color.fromRGBO(100, 146, 107, 1),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            Lobby.routeName,
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

              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15)),
            ],
          ),
        ),
      ),
    );
  }
}