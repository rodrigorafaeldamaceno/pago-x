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
      ),
      drawer: DrawerMenu(
        pageController: _pageController,
        index: _currentIndex,
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Center(
            child: Text(
              'Pagina 1',
              style: TextStyle(fontSize: 50),
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
