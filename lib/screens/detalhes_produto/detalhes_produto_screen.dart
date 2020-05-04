import 'package:flutter/material.dart';

class DetelhesProdutoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pago X')),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            Text(
              'Detalhes sobre a pesquisa',
              style: TextStyle(
                fontSize: 24,
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'O que você está procurando?',
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Preço',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Sugestão: R\$ 1.400,00',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixText: 'R\$ ',
                      labelText: 'Valor',
                    ),
                  ),
                )
              ],
            ),
            Slider(
              value: 0,
              onChanged: (value) {},
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Raio de procura',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Slider(
              value: 0,
              onChanged: (value) {},
            ),
            Align(
              alignment: Alignment.center,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 16,
                ),
                onPressed: () {},
                color: Theme.of(context).accentColor,
                child: Text(
                  'PROCURAR VENDEDORES',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
