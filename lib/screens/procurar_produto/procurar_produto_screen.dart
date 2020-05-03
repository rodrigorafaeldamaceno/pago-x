import 'package:flutter/material.dart';

class ProcurarProdutoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'O que você está procurando?',
              style: TextStyle(
                fontSize: 24,
                color: Theme.of(context).accentColor,
              ),
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
    );
  }
}
