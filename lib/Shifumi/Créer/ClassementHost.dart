// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myfirstapp/Shifumi/Accueil.dart';
import 'package:myfirstapp/Shifumi/Data.dart';

class ClassementHost extends StatelessWidget {
static String routeName = '/ClassementHost';
final String title;
final String content;

ClassementHost({Key? key, required this.title, required this.content}) : super(key: key);

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

              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05)),

              Container(
                color: const Color.fromRGBO(236, 146, 107, 1),
                height: MediaQuery.of(context).size.height * 0.10,
                width: MediaQuery.of(context).size.width,
                child: const Text('KaFuMi', textAlign: TextAlign.center, overflow: 
                TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 75, color: Color.fromRGBO(33, 45, 64, 1)),)
              ),

              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02)),

              Container(
                color: const Color.fromRGBO(236, 146, 107, 1),
                height: MediaQuery.of(context).size.height * 0.02,
                width: MediaQuery.of(context).size.width,
                child: const Text('______________', textAlign: TextAlign.center, overflow: 
                TextOverflow.ellipsis, style: TextStyle(fontSize: 15, color: Color.fromRGBO(33, 45, 64, 1)),)
              ),            
              
              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01)),

//--------------------------------------------------------------------//
//------------------------- Numéro de manche -------------------------//
//--------------------------------------------------------------------//

              Container(
                color: const Color.fromRGBO(236, 146, 107, 1),
                height: MediaQuery.of(context).size.height * 0.10,
                width: MediaQuery.of(context).size.width,
                child: const Text('Manche 3', textAlign: TextAlign.center, overflow: 
                TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Color.fromRGBO(33, 45, 64, 1)),)
              ),

//----------------------------------------------------------------------//
//------------------------- Tableau classement -------------------------//
//---------------------------------------------------------------------//

              Container(
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.width * 0.60,
                decoration: BoxDecoration(
                  boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 2.0)],
                  border: Border.all(color: const Color.fromRGBO(33, 45, 64, 1), width: 1.0),
                  color: const Color.fromRGBO(236, 146, 107, 1),
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.45,
                      child: const Text('Classement', textAlign: TextAlign.center, overflow: 
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
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.75,
                color: const Color.fromRGBO(236, 146, 107, 1),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width,
                      child: const Text('Début de la prochaine manche', textAlign: TextAlign.center, overflow: 
                              TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromRGBO(33, 45, 64, 1))
                      ),
                    ),
                    Container(
                          color: const Color.fromRGBO(33, 45, 64, 1),
                          width: 100,
                          child: const Text('00:05', textAlign: TextAlign.center, overflow: 
                          TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromRGBO(164, 180, 148, 1)),)
                        ),
                    Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05)),
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