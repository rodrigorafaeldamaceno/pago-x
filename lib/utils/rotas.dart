import 'package:flutter/material.dart';
import 'package:pagox/screens/home/home_screen.dart';
import 'package:pagox/screens/login/cadastrar_conta.dart';
import 'package:pagox/screens/login/login.dart';
import 'package:pagox/screens/tutorial/sliding_tutorial.dart';

class Rotas {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case 'login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
        break;
      case 'home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
        break;
      case 'cadastrar_usuario':
        return MaterialPageRoute(builder: (_) => CadastrarContaScreen());
        break;
      case 'tutorial':
        return MaterialPageRoute(
          builder: (_) => TutorialPage(),
        );
        break;
      default:
        _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Erro'),
        ),
        body: Container(
          child: Text('Rota não definida'),
        ),
      );
    });
  }
}
