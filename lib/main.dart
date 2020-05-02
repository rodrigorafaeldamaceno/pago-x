import 'package:flutter/material.dart';
import 'package:pagox/screens/home/home_screen.dart';
import 'package:pagox/utils/rotas.dart';

void main() async {
  String defaultHome = 'login';

  runApp(MyApp(defaultHome));
}

class MyApp extends StatelessWidget {
  String defaultHome;

  MyApp(this.defaultHome);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pago X',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.green
      ),
      home: HomeScreen(),
      initialRoute: defaultHome,
      onGenerateRoute: Rotas.generateRoute,
    );
  }
}
