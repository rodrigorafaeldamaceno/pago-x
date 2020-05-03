import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class NegociacaoScreen extends StatelessWidget {
  GlobalKey _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget cardNegociacao({String item}) {
    return ExpansionTile(
      title: Text(item),
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(item),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(item),
                    Text(item),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(item),
                    Text(item),
                  ],
                ),
              ],
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(item),
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 45,
            color: Colors.green,
            child: Text(
              'Negociações',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: size.height * 0.7,
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: new Size(double.infinity, size.height * 0.1),
                  child: Container(
                    child: TabBar(
                      unselectedLabelColor: Colors.black54,
                      labelPadding: EdgeInsets.symmetric(vertical: 8),
                      labelColor: Colors.green,
                      indicatorColor: Colors.green,
                      labelStyle: TextStyle(fontWeight: FontWeight.w700),
                      unselectedLabelStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                      indicatorWeight: 3.0,
                      tabs: [
                        Tab(text: "Em andamento"),
                        Tab(text: "Finalizadas"),
                      ],
                    ),
                  ),
                ),
                body: Container(
                  child: TabBarView(
                    children: [
                      ListView.builder(
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return cardNegociacao(item: 'Macbook');
                        },
                      ),
                      ListView.builder(
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return cardNegociacao(item: 'Playstation');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
