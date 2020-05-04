import 'package:flutter/material.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TutorialSegundaPagina extends StatelessWidget {
  final int page;
  final ValueNotifier<double> notifier;

  TutorialSegundaPagina(this.page, this.notifier);

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
                      "assets/images/tutorial/tutorial_2.png",
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
                              'Conecte-se a vendedores do seu bairro e região',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'Localizamos para você os vendedores mais próximos',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
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
