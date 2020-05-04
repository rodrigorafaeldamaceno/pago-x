import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pagox/stores/autenticacao/authServices.dart';

class DrawerMenu extends StatefulWidget {
  DrawerMenu({this.index, this.pageController});

  final int index;
  final PageController pageController;
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  double rating = 0;
  AuthService auth = AuthService();
  
  _submitUser(){
    return auth.logout().then((onValue){
      print("resposta  == " + onValue.toString() + auth.getUser().toString());
    });
  }

  Widget buildListTile({IconData icon, String label, Function onTap}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.green
            ),
          ),
          ListView(
            children: <Widget>[
              Container(
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      MdiIcons.accountCircleOutline,
                      size: 100,
                      color: Colors.white,
                    ),
                    SizedBox(height: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'perfil');
                      },
                      child: Container(
                        child: Text(
                          'Nome Completo',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      child: Text(
                        'email@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              buildListTile(
                icon: Icons.search,
                label: 'Procurar Produto',
                onTap: () {
                  Navigator.pop(context);
                  widget.pageController.jumpToPage(0);
                },
              ),
              buildListTile(
                icon: Icons.search,
                label: 'Minhas Pesquisas',
                onTap: () {
                  Navigator.pop(context);
                  widget.pageController.jumpToPage(1);
                },
              ),
              buildListTile(
                icon: Icons.search,
                label: 'Lista de Oportunidades',
                onTap: () {
                  Navigator.pop(context);
                  widget.pageController.jumpToPage(2);
                },
              ),
              buildListTile(
                icon: Icons.search,
                label: 'Negociações',
                onTap: () {
                  Navigator.pop(context);
                  widget.pageController.jumpToPage(3);
                },
              ),
              buildListTile(
                icon: Icons.search,
                label: 'Preferências',
                onTap: () {
                  Navigator.pop(context);
                  widget.pageController.jumpToPage(4);
                },
              ),
              Divider(
                height: 20,
                color: Colors.white,
              ),
              buildListTile(
                icon: MdiIcons.faceAgent,
                label: 'Ajuda',
                onTap: () {
                  Navigator.pop(context);
                  widget.pageController.jumpToPage(5);
                },
              ),
              buildListTile(
                icon: MdiIcons.faceAgent,
                label: 'Sobre nós',
                onTap: () {
                  Navigator.pop(context);
                  widget.pageController.jumpToPage(6);
                },
              ),
              buildListTile(
                icon: MdiIcons.faceAgent,
                label: 'Contato',
                onTap: () {
                  Navigator.pop(context);
                  widget.pageController.jumpToPage(7);
                },
              ),
              buildListTile(
                icon: MdiIcons.arrowLeft,
                label: 'Sair',
                onTap: () {
                  _submitUser();
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    'login',
                    ((Route route) => false),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
