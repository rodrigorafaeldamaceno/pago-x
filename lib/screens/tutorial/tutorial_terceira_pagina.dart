import 'package:flutter/material.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';

class TutorialTerceiraPagina extends StatelessWidget {
  final int page;
  final ValueNotifier<double> notifier;

  TutorialTerceiraPagina(this.page, this.notifier);
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('PagoX'),
        centerTitle: true,
      ),
      body: SlidingPage(
        page: page,
        notifier: notifier,
        child: Container(
          child: Stack(
            children: [
              Center(
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  heightFactor: 0.35,
                  child: SlidingContainer(
                    child: Image.asset(
                      "assets/images/tutorial/tutorial_3.png",
                    ),
                    offset: 300,
                  ),
                ),
              ),
              Positioned(
                bottom: 100,
                child: Align(
                  child: SlidingContainer(
                    offset: 250,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: size.width,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              'Procure o que você precisa',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'Fique à vontade para negociar o preço e a forma de entrega com os vendedores',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RaisedButton(
                            onPressed: () {
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
                                  'CONTINUAR',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
