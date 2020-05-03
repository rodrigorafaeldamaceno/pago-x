import 'package:flutter/material.dart';
import 'package:pagox/stores/home/home_store.dart';
import 'package:pagox/widgets/custom/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  HomeStore controller = HomeStore();

  void onPageChanged(int page) {
    controller.currentIndex = page;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      drawer: DrawerMenu(
        pageController: _pageController,
        index: _currentIndex,
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'O que você está procurando?',
                    style: TextStyle(
                        fontSize: 24, color: Theme.of(context).accentColor),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Material(
                    elevation: 2,
                    child: TextField(                      
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.all(16),
                        suffixIcon: Icon(Icons.mic),
                        prefixIcon: Icon(Icons.search),
                        labelText: 'Digite aqui...',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    elevation: 6,
                    padding: EdgeInsets.symmetric(
                      horizontal: 140,
                      vertical: 16,
                    ),
                    child: Text(
                      'PRÓXIMO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    color: Theme.of(context).accentColor,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Text(
              'Pagina 2',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              'Pagina 3',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              'Pagina 4',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              'Pagina 5',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              'Pagina 6',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              'Pagina 7',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              'Pagina 8',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ],
        controller: _pageController,
        onPageChanged: onPageChanged,
      ),
    );
  }
}
