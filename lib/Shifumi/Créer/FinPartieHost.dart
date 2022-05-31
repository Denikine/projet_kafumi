// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myfirstapp/Shifumi/Accueil.dart';
import 'package:myfirstapp/Shifumi/Data.dart';
import 'package:myfirstapp/Shifumi/Créer/ResultatHost.dart';
import 'CreerLobby.dart';
import 'IngameHost.dart';

class FinPartieHost extends StatelessWidget {
static String routeName = '/FinPartieHost';
final String title;
final String content;

FinPartieHost({Key? key, required this.title, required this.content}) : super(key: key);

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
              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01)),
              Container(
                height: MediaQuery.of(context).size.height * 0.10,
                color: const Color.fromRGBO(236, 146, 107, 1),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.01)),
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
                        child: const Image(image:AssetImage('image/AccueilNoir.png'),alignment: Alignment.centerLeft,  fit: BoxFit.contain),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.57,
                      alignment: Alignment.center,
                      child: const Text('KaFuMi', textAlign: TextAlign.center, overflow: 
                      TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 75, color: Color.fromRGBO(33, 45, 64, 1)),)
                    ), 
                  ],
                ),
              ),  

              Container(
                      color: const Color.fromRGBO(236, 146, 107, 1),
                      height: MediaQuery.of(context).size.height * 0.02,
                      width: MediaQuery.of(context).size.width,
                      child: const Text('______________', textAlign: TextAlign.center, overflow: 
                      TextOverflow.ellipsis, style: TextStyle(fontSize: 15, color: Color.fromRGBO(33, 45, 64, 1)),)
              ),            
              
              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02)),

//-------------------------------------------------------------//
//------------------------- Vainqueur -------------------------//
//------------------------------------------------------------//

              const SizedBox(
                child: Text('Victoire De', textAlign: TextAlign.center, overflow: 
                TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Color.fromRGBO(33, 45, 64, 1))
                ),
              ), 
              Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.01)),    
              const SizedBox(
                child: Text('IvanTop1', textAlign: TextAlign.center, overflow: 
                TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Color.fromARGB(250, 250, 255, 0 ))
                ),
              ), 

              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02)),

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
                      child: const Text('Classement', textAlign: TextAlign.center, overflow: 
                      TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromRGBO(33, 45, 64, 1))
                      ),
                    ),                           
                  ],
                ),
              ),

              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03)),

//------------------------------------------------------------------------------------------------//
//------------------------- Message : "En attente du début de la partie" -------------------------//
//------------------------------------------------------------------------------------------------//
                
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
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
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                        child: const Text('Démarer une', textAlign: TextAlign.center, overflow: 
                        TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromRGBO(164, 180, 148, 1))
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                        child: const Text('nouvelle partie', textAlign: TextAlign.center, overflow: 
                        TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromRGBO(164, 180, 148, 1))
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015)),
                    ],
                  ),              
                ),
              ),

              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01)),

              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: 250,
                color: const Color.fromRGBO(236, 146, 107, 1),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: const Text('3 personnes veulent commencer une', textAlign: TextAlign.center, overflow: 
                      TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromRGBO(33, 45, 64, 1))
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: const Text('nouvelle partie', textAlign: TextAlign.center, overflow: 
                      TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromRGBO(33, 45, 64, 1))
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