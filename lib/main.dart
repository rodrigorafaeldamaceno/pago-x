import 'package:flutter/material.dart';
import 'package:pagox/screens/home/home_screen.dart';
import 'package:pagox/utils/rotas.dart';

void main() async {
  String defaultHome = 'login';

  runApp(MyApp(defaultHome));
}

class MyApp extends StatelessWidget {
  MyApp(this.defaultHome);

  String defaultHome;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pago X',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(elevation: 0),
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
      ),
      home: HomeScreen(),
      initialRoute: defaultHome,
      onGenerateRoute: Rotas.generateRoute,
    );
  }
}
