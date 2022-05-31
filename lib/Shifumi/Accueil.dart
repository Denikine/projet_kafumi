// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'Rejoindre/RejoindreLobby.dart';
import 'Créer/CreerLobby.dart';
import 'CommentJouer/CommentJouer.dart';
import 'Data.dart';

class Accueil extends StatelessWidget {
  static String routeName = '/';

  const Accueil({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(236, 146, 107, 1),
      
      body: Center(
        child: Container(
          color: const Color.fromRGBO(236, 146, 107, 1),

          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.10)),

//-------------------------------------------------------------------------//
//------------------------- Bienvenue sur Kafumi -------------------------//
//------------------------------------------------------------------------//

              Container(
                color: const Color.fromRGBO(236, 146, 107, 1),
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width,
                child: const Text('Bienvenue sur', textAlign: TextAlign.center, overflow: 
                TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromRGBO(33, 45, 64, 1)),)
              ),
              Container(
                color: const Color.fromRGBO(236, 146, 107, 1),
                height: MediaQuery.of(context).size.height * 0.17,
                width: MediaQuery.of(context).size.width,
                child: const Text('KaFuMi', textAlign: TextAlign.center, overflow: 
                TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 75, color: Color.fromRGBO(33, 45, 64, 1)),)
              ),

//------------------------------------------------------------------------------------------//
//------------------------- Bouton + intitulé Rejoindre une partie -------------------------//
//------------------------------------------------------------------------------------------//

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1)),
                    SizedBox(
                    height: MediaQuery.of(context).size.height * 0.45,
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
                        child: Column(
                          children:[
                            Container(
                              height: MediaQuery.of(context).size.height * 0.18,
                              decoration: const BoxDecoration(
                                image: DecorationImage(image: AssetImage('image/RejoindrePartie.png'), fit: BoxFit.contain)
                              ),
                            ),
                            Container(
                              color: const Color.fromRGBO(236, 146, 107, 1),
                              height: MediaQuery.of(context).size.height * 0.05,
                              child: const Text('Rejoindre', textAlign: TextAlign.center, overflow: 
                              TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Color.fromRGBO(33, 45, 64, 1)),)
                            ),
                            Container(
                              color: const Color.fromRGBO(236, 146, 107, 1),
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: const Text('une partie', textAlign: TextAlign.center, overflow: 
                              TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Color.fromRGBO(33, 45, 64, 1)),)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

//------------------------------------------------------------------------------------//
//------------------------- Créer un partie & Comment Jouer? -------------------------//
//------------------------------------------------------------------------------------//

              Container(
                color: const Color.fromRGBO(33, 45, 64, 1),
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: const Color.fromRGBO(33, 45, 64, 1),
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  CreerLobby.routeName,
                                  arguments: Data(
                                    title: 'Envoyer des arguments',
                                    content: 'Le contenu',
                                  ),
                                );
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage('image/CreerPartie.png'), fit: BoxFit.contain)
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: const Color.fromRGBO(33, 45, 64, 1),
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.5,
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
            ],
          ),
        ),
      ),
    );
  }
}