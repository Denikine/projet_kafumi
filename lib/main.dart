import 'package:flutter/material.dart';
import 'Shifumi/Créer/ClassementHost.dart';
import 'Shifumi/Créer/FinPartieHost.dart';
import 'Shifumi/Créer/ResultatHost.dart';
import 'Shifumi/Rejoindre/ChoisirPseudo.dart';
import 'Shifumi/Créer/IngameHost.dart';
import 'Shifumi/Créer/LobbyHost.dart';
import 'Shifumi/CommentJouer/RegleCreerPartie.dart';
import 'Shifumi/CommentJouer/RegleRejoindrePartie.dart';
import 'Shifumi/CommentJouer/ReglesDuJeu.dart';
import 'Shifumi/Rejoindre/Lobby.dart';
import 'Shifumi/Accueil.dart';
import 'Shifumi/Rejoindre/RejoindreLobby.dart';
import 'Shifumi/Créer/CreerLobby.dart';
import 'Shifumi/CommentJouer/CommentJouer.dart';
import 'Shifumi/Data.dart';
import 'Shifumi/Notfound.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation avec Flutter',
    initialRoute: Accueil.routeName,
    routes: {
      Accueil.routeName : (context) => const Accueil(),
    },
    
    onGenerateRoute: (settings) {
      if (settings.name == RejoindreLobby.routeName) {
        final Data arguments = settings.arguments as Data;
        return MaterialPageRoute(builder: (context) {
          return RejoindreLobby(
            title: arguments.title,
            content: arguments.content,
          );
        });
      }

      if (settings.name == CreerLobby.routeName) {
        final Data arguments = settings.arguments as Data;
        return MaterialPageRoute(builder: (context) {
          return CreerLobby(
            title: arguments.title,
            content: arguments.content,
          );
        });
      }

      if (settings.name == CommentJouer.routeName) {
        final Data arguments = settings.arguments as Data;
        return MaterialPageRoute(builder: (context) {
          return CommentJouer(
            title: arguments.title,
            content: arguments.content,
          );
        });
      }

      if (settings.name == ChoisirPseudo.routeName) {
        final Data arguments = settings.arguments as Data;
        return MaterialPageRoute(builder: (context) {
          return ChoisirPseudo(
            title: arguments.title,
            content: arguments.content,
          );
        });
      }

      if (settings.name == Lobby.routeName) {
        final Data arguments = settings.arguments as Data;
        return MaterialPageRoute(builder: (context) {
          return Lobby(
            title: arguments.title,
            content: arguments.content,
          );
        });
      }

      if (settings.name == RegleCreerPartie.routeName) {
        final Data arguments = settings.arguments as Data;
        return MaterialPageRoute(builder: (context) {
          return RegleCreerPartie(
            title: arguments.title,
            content: arguments.content,
          );
        });
      }

      if (settings.name == RegleRejoindrePartie.routeName) {
        final Data arguments = settings.arguments as Data;
        return MaterialPageRoute(builder: (context) {
          return RegleRejoindrePartie(
            title: arguments.title,
            content: arguments.content,
          );
        });
      }

      if (settings.name == ReglesDuJeu.routeName) {
        final Data arguments = settings.arguments as Data;
        return MaterialPageRoute(builder: (context) {
          return ReglesDuJeu(
            title: arguments.title,
            content: arguments.content,
          );
        });
      }

      if (settings.name == LobbyHost.routeName) {
        final Data arguments = settings.arguments as Data;
        return MaterialPageRoute(builder: (context) {
          return LobbyHost(
            title: arguments.title,
            content: arguments.content,
          );
        });
      }

      if (settings.name == IngameHost.routeName) {
        final Data arguments = settings.arguments as Data;
        return MaterialPageRoute(builder: (context) {
          return IngameHost(
            title: arguments.title,
            content: arguments.content,
          );
        });
      }

      if (settings.name == ResultatHost.routeName) {
        final Data arguments = settings.arguments as Data;
        return MaterialPageRoute(builder: (context) {
          return ResultatHost(
            title: arguments.title,
            content: arguments.content,
          );
        });
      }

      if (settings.name == ClassementHost.routeName) {
        final Data arguments = settings.arguments as Data;
        return MaterialPageRoute(builder: (context) {
          return ClassementHost(
            title: arguments.title,
            content: arguments.content,
          );
        });
      }

      if (settings.name == FinPartieHost.routeName) {
        final Data arguments = settings.arguments as Data;
        return MaterialPageRoute(builder: (context) {
          return FinPartieHost(
            title: arguments.title,
            content: arguments.content,
          );
        });
      }

      return null;

    },

    onUnknownRoute: (settings) {
      return MaterialPageRoute(builder: (context) => NotFound());
    },

  ),);
}


