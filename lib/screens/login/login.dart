import 'package:flutter/material.dart';
import 'package:pagox/models/usuario.dart';
import 'package:pagox/stores/autenticacao/authServices.dart';

class LoginScreen extends StatelessWidget {
  Size size;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  AuthService auth = AuthService();
  
  _submitUser(){
    Usuario usuario = Usuario();
    usuario.email = _emailController.text;
    usuario.senha = _passController.text;

    
    return auth.loginUser(usuario.toMap()).then((onValue){
      print("resposta  == " + onValue.toString() + auth.getUser().toString());
    });
  }
  
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: size.width * 0.5,
                width: size.width * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/pagox_logo_normal.png'),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Faça seu login',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                ),
              ),
              SizedBox(height: 8),
              TextField(
                controller: _passController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                ),
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () {

                  _submitUser();
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    'home',
                    ((Route route) => false),
                  );
                },
                color: Colors.green,
                child: Container(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Esqueci minha senha',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'cadastrar_usuario');
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Quero criar uma conta',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
