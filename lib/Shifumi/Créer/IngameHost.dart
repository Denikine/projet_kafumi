// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myfirstapp/Shifumi/Data.dart';
import 'dart:async';
import 'package:myfirstapp/Shifumi/Countdown/countdown.dart';

class IngameHost extends StatefulWidget {
  static String routeName = '/IngameHost';
  final String title;
  final String content;
  final _textController = TextEditingController();
  IngameHost({Key? key, required this.title, required this.content})
      : super(key: key);
  @override
  _IngameHostState createState() => _IngameHostState();
}

class _IngameHostState extends State<IngameHost> {
  String _text = 'Please wait...';
  String _decompte = "10";
  final _controller = CountDownController();

  // @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 5), () {
  //     showDialog(
  //         context: context,
  //         builder: (_) => const SimpleDialog(
  //               title: Text('Have a nice day'),
  //               children: [Text('Happy coding with Flutter')],
  //               contentPadding: EdgeInsets.all(25),
  //             ));
  //     setState(() {
  //       _text = 'Everything is ready';
  //       _decompte = "0";
  //     });
  //   });
  // }

// ignore: use_key_in_widget_constructors

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(236, 146, 107, 1),
      body: Center(
        child: Container(
          color: const Color.fromRGBO(236, 146, 107, 1),
          child: Column(
            children: [
//----------------------------------------------------------//
//------------------------- Kafumi -------------------------//
//----------------------------------------------------------//

              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05)),

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
                      top: MediaQuery.of(context).size.height * 0.02)),

              Container(
                  color: const Color.fromRGBO(236, 146, 107, 1),
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    '______________',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 15, color: Color.fromRGBO(33, 45, 64, 1)),
                  )),

//-----------------------------------------------------------------//
//------------------------- IA + Signe IA -------------------------//
//----------------------------------------------------------------//

              Container(
                  color: const Color.fromRGBO(236, 146, 107, 1),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    'IA',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(33, 45, 64, 1)),
                  )),

              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width * 0.80,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(color: Colors.black, blurRadius: 2.0)
                  ],
                  border: Border.all(
                      color: const Color.fromRGBO(33, 45, 64, 1), width: 1.0),
                  color: const Color.fromRGBO(164, 180, 148, 1),
                  shape: BoxShape.circle,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Image.asset(
                        'image/pierre.png',
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.80,
                      ),
                      //   image: AssetImage(
                      //     './image/pierre.png',
                      //     height: 100,
                      //     width: 100,
                      //   ),
                      //   fit: BoxFit.fitHeight,
                      // ),
                    ),
                  ],
                ),
              ),

              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05)),

//-------------------------------------------------------------------------------------//
//------------------------- Temps restant + Joueurs restants -------------------------//
//------------------------------------------------------------------------------------//

              Row(
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: CountDownProgressIndicator(
                      controller: _controller,
                      valueColor: Colors.red,
                      backgroundColor: Colors.blue,
                      initialPosition: 0,
                      duration: 10,
                      text: 'SEC',
                      onComplete: () => null,
                    ),
                  ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.16,
                  //   width: MediaQuery.of(context).size.width * 0.50,
                  // child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: [
                  // SizedBox(
                  //     height: MediaQuery.of(context).size.height * 0.05,
                  //     width: MediaQuery.of(context).size.width,
                  //     child: const Text(
                  //       'Temps restant',
                  //       textAlign: TextAlign.center,
                  //       overflow: TextOverflow.ellipsis,
                  //       style: TextStyle(
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 25,
                  //           color: Color.fromRGBO(33, 45, 64, 1)),
                  //     )),
                  // Container(
                  //     color: const Color.fromRGBO(33, 45, 64, 1),
                  //     width: 100,
                  //     child: const Text(
                  //       '00:05',
                  //       textAlign: TextAlign.center,
                  //       overflow: TextOverflow.ellipsis,
                  //       style: TextStyle(
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 25,
                  //           color: Color.fromRGBO(164, 180, 148, 1)),
                  //     )),
                  // ]),
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.16,
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width,
                              child: const Text(
                                'Joueurs restants',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color.fromRGBO(33, 45, 64, 1)),
                              )),
                          Container(
                              color: const Color.fromRGBO(33, 45, 64, 1),
                              width: 100,
                              child: Text(
                                //'10',
                                _decompte,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color.fromRGBO(164, 180, 148, 1)),
                              )),
                        ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
