import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class NegociacaoScreen extends StatelessWidget {
  final GlobalKey _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget cardNegociacao({String item}) {
    return ExpansionTile(
      title: Text(
        item,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('ID #5424',
                      style: TextStyle(
                        color: Colors.black45,
                      )),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Comprador',
                          style: TextStyle(
                            fontSize: 14,
                          )),
                      Text('Ricardo Smith',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Preço',
                          style: TextStyle(
                            fontSize: 16,
                          )),
                      Text('R\$ 2.000,00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Vendedor',
                          style: TextStyle(
                            fontSize: 14,
                          )),
                      Text('José da Silva',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[                     
                      Row(
                        children: <Widget>[
                           Icon(Icons.star),
                          Text('4.6/5.0',

                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black45,
                              )),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on),
                          Text('3 km de distância',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black45,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                    elevation: 5,
                    onPressed: () {},
                    color: Colors.green,
                    child: Text(
                      'VER DETALHES',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
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
          SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 45,
            color: Colors.white,
            child: Text(
              'Negociações',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          Container(
            height: size.height * 0.7,
            padding: EdgeInsets.symmetric(horizontal: 20),
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
                        Tab(text: "EM ANDAMENTO"),
                        Tab(text: "FINALIZADAS"),
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
                          return Card(
                            elevation: 5,
                            child: cardNegociacao(item: 'Macbook'),
                          );
                        },
                      ),
                      ListView.builder(
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            elevation: 5,
                            child: cardNegociacao(item: 'Playstation'),
                          );
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
