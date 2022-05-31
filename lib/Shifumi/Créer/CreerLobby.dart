// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myfirstapp/Shifumi/Accueil.dart';
import 'package:myfirstapp/Shifumi/Data.dart';
import 'LobbyHost.dart';

class CreerLobby extends StatelessWidget {
static String routeName = '/JoinCreerLobby';
final String title;
final String content;
final _textController = TextEditingController();
// ignore: use_key_in_widget_constructors
CreerLobby({required this.title, required this.content});

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

              Container(
                height: MediaQuery.of(context).size.height * 0.10,
                color: const Color.fromRGBO(236, 146, 107, 1),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width * 0.20,
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
                        child: const Image(image:AssetImage('image/Retour.png'),alignment: Alignment.centerLeft,  fit: BoxFit.contain),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.60,
                      alignment: Alignment.center,
                      child: const Text('KaFuMi', textAlign: TextAlign.center, overflow: 
                      TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 75, color: Color.fromRGBO(33, 45, 64, 1)),)
                    ),
                  ],
                ),
              ), 

              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05)),

//--------------------------------------------------------------------------------------//
//------------------------- Kafumi + Code PIN + Bouton Valider -------------------------//
//--------------------------------------------------------------------------------------//

              Container(
                color: const Color.fromRGBO(236, 146, 107, 1),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                child: const Text('Paramètres', textAlign: TextAlign.center, overflow: 
                TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Color.fromRGBO(33, 45, 64, 1)),)
              ),
              Container(
                color: const Color.fromRGBO(236, 146, 107, 1),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                child: const Text('de la partie', textAlign: TextAlign.center, overflow: 
                TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Color.fromRGBO(33, 45, 64, 1)),)
              ),

              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05)),

              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromRGBO(236, 146, 107, 1),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          color: const Color.fromRGBO(236, 146, 107, 1),
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: 150,
                          child: const Text('Nombre de joueurs : ', textAlign: TextAlign.center, overflow: 
                          TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromRGBO(33, 45, 64, 1)),)
                        ),
                        SizedBox(
                          height: 70.0,
                          width: 208.0, 
                          child: TextField(
                            style: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.black                  
                            ),
                            controller: _textController,
                            decoration: const InputDecoration(
                              hintText: 'Entrer le nombre de joueurs',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 60,
                      width: 300.0,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            LobbyHost.routeName,
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

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 5, 101, 255),
                      height: MediaQuery.of(context).size.height * 0.10,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.10)),
                    Container(
                      color: const Color.fromRGBO(33, 45, 64, 1),
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width,
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