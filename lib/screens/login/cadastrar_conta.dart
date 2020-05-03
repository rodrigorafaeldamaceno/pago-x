import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pagox/stores/autenticacao/autenticacao_store.dart';

class CadastrarContaScreen extends StatelessWidget {
  Size size;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  TextEditingController _nomeController = TextEditingController();
  AutenticacaoStore controller = AutenticacaoStore();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.green),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Faça seu cadastro',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'É grátis!',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                controller: _nomeController,
                decoration: InputDecoration(
                  labelText: 'Nome',
                ),
              ),
              SizedBox(height: 8),
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
                    helperText: 'Deve conter no mínimo 8 caracteres.'),
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () {
                  false
                      ? Container()
                      : Navigator.pushNamedAndRemoveUntil(
                          context,
                          'tutorial',
                          ((Route route) => false),
                        );
                },
                color: Colors.green,
                child: Container(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'CADASTRAR',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Observer(builder: (_) {
                    return Checkbox(
                      value: controller.checkTermosDeUso,
                      onChanged: (value) {
                        controller.checkTermosDeUso = value;
                      },
                    );
                  }),
                  Row(
                    children: <Widget>[
                      Text('Li e aceito os'),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Termos de uso'),
                                content: Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                  textAlign: TextAlign.justify,
                                ),
                                actions: <Widget>[
                                  FlatButton(
                                    onPressed: () {
                                      controller.checkTermosDeUso = true;
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'ACEITO',
                                      style: TextStyle(
                                        color: Colors.green,
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          ' Termos de Uso',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
