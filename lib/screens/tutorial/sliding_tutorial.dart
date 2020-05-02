import 'package:flutter/material.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pagox/screens/tutorial/tutorial_primeira_pagina.dart';
import 'package:pagox/screens/tutorial/tutorial_segunda_pagina.dart';
import 'package:pagox/screens/tutorial/tutorial_terceira_pagina.dart';

class TutorialPage extends StatefulWidget {
  TutorialPage({Key key}) : super(key: key);

  @override
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  final ValueNotifier<double> notifier = ValueNotifier(0);
  int pageCount = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            SlidingTutorial(
              pageCount: pageCount,
              notifier: notifier,
            ),
            Align(
              alignment: Alignment(0, 0.85),
              child: Container(
                width: double.infinity,
                height: 0.5,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment(0, 0.94),
              child: SlidingIndicator(
                indicatorCount: pageCount,
                notifier: notifier,
                activeIndicator: Icon(
                  Icons.check_circle,
                  size: 11,
                  color: Color(0xFF29B6F6),
                ),
                inActiveIndicator: SvgPicture.asset(
                  "assets/images/tutorial/hollow_circle.svg",
                ),
                margin: 8,
                sizeIndicator: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SlidingTutorial extends StatefulWidget {
  final ValueNotifier<double> notifier;
  final int pageCount;

  const SlidingTutorial(
      {Key key, @required this.notifier, @required this.pageCount})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _SlidingTutorial();
}

class _SlidingTutorial extends State<SlidingTutorial> {
  var _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    _pageController..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBackgroundColor(
      pageController: _pageController,
      pageCount: widget.pageCount,
      child: Container(
        color: Colors.white,
        child: PageView(
          controller: _pageController,
          children: List<Widget>.generate(
            widget.pageCount,
            (index) => _getPageByIndex(index),
          ),
        ),
      ),
    );
  }

  Widget _getPageByIndex(int index) {
    switch (index % 3) {
      case 0:
        return TutorialPrimeiraPagina(index, widget.notifier);
      case 1:
        return TutorialSegundaPagina(index, widget.notifier);
      case 2:
        return TutorialTerceiraPagina(index, widget.notifier);
      default:
        throw ArgumentError("Unknown position: $index");
    }
  }

  _onScroll() {
    widget.notifier?.value = _pageController.page;
  }
}
