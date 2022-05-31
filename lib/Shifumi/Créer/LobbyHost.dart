// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myfirstapp/Shifumi/Data.dart';
import 'CreerLobby.dart';
import 'IngameHost.dart';

class LobbyHost extends StatelessWidget {
static String routeName = '/LobbyHost';
final String title;
final String content;

LobbyHost({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(236, 146, 107, 1),
      
      body: Center(
        child: Container(
          color: const Color.fromRGBO(236, 146, 107, 1),

          child: Column(
            children: [

//---------------------------------------------------------------------------------//
//------------------------- Bouton Accueil + Titre Kafumi -------------------------//
//---------------------------------------------------------------------------------//

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
                            CreerLobby.routeName,
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

//--------------------------------------------------------------------//
//------------------------- Tableau Code PIN -------------------------//
//--------------------------------------------------- ----------------//

              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: 250,
                decoration: BoxDecoration(
                  boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 2.0)],
                  border: Border.all(color: const Color.fromRGBO(33, 45, 64, 1), width: 1.0),
                  color: const Color.fromRGBO(236, 146, 107, 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      child: Text('Code Pin :', textAlign: TextAlign.center, overflow: 
                      TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromRGBO(33, 45, 64, 1))
                      ),
                    ), 
                    Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.01)),    
                    const SizedBox(
                      child: Text('049209', textAlign: TextAlign.center, overflow: 
                      TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromRGBO(33, 45, 64, 1))
                      ),
                    ),                       
                  ],
                ),
              ),

              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05)),

//-----------------------------------------------------------------------------//
//------------------------- Tableau Joueurs connectés -------------------------//
//----------------------------------------------------------------------------//

              Container(
                height: MediaQuery.of(context).size.height * 0.52,
                width: MediaQuery.of(context).size.width * 0.70,
                decoration: BoxDecoration(
                  boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 2.0)],
                  border: Border.all(color: const Color.fromRGBO(33, 45, 64, 1), width: 1.0),
                  color: const Color.fromRGBO(236, 146, 107, 1),
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.43,
                      child: const Text('Joueurs connectés :', textAlign: TextAlign.center, overflow: 
                      TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromRGBO(33, 45, 64, 1))
                      ),
                    ),                           
                  ],
                ),
              ),

              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05)),

//------------------------------------------------------------------------------------------------//
//------------------------- Message : "En attente du début de la partie" -------------------------//
//------------------------------------------------------------------------------------------------//
                
              Container(
                height: MediaQuery.of(context).size.height * 0.10,
                width: 250,
                color: const Color.fromRGBO(236, 146, 107, 1),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      IngameHost.routeName,
                      arguments: Data(
                        title: 'Envoyer des arguments',
                        content: 'Le contenu',
                      ),
                    );
                  },
                  color: const Color.fromRGBO(33, 45, 64, 1),
                  child: const Text('Commencer la partie', style: TextStyle(color: Color.fromRGBO(164, 180, 148, 1),)), 
                ),
              ),
              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05)),
            ],
          ),
        ),
      ),
    );
  }
}