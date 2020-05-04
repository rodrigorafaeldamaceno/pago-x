import 'package:flutter/material.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';
import 'package:flutter_svg/svg.dart';

class TutorialPrimeiraPagina extends StatelessWidget {
  final int page;
  final ValueNotifier<double> notifier;

  TutorialPrimeiraPagina(this.page, this.notifier);
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
                      "assets/images/tutorial/tutorial_1.png",
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
                          SizedBox(height: 10),
                          Flexible(
                            child: Text(
                              'Compre aquilo que você precisa pelo preço que você deseja pagar',
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
