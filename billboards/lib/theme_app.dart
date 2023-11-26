import 'dart:async';
import 'dart:math';

import 'package:billboards/theme.dart';
import 'package:billboards/theme_data.dart';
import 'package:flutter/widgets.dart';

class TonalApp extends StatefulWidget {
  const TonalApp({
    super.key,
    required this.themeData,
    required this.home,
  });

  final Widget home;
  final TonalThemeData themeData;

  @override
  State<TonalApp> createState() => _TonalAppState();
}

class _TonalAppState extends State<TonalApp>
    with SingleTickerProviderStateMixin {
  TonalThemeData? oldThemeData;
  late TonalThemeData themeData = widget.themeData;
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 900),
  );

  @override
  void setState(VoidCallback fn) {
    _controller.reset();
    oldThemeData = themeData.copy();
    _controller.forward();
    super.setState(fn);
  }

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      final c =
          HSLColor.fromAHSL(1, Random().nextInt(3600).toDouble() / 10, .5, .5);
      // final fontSize = (Random().nextInt(80) / 10) + 8;
      // final rad = Random().nextInt(fontSize.round());
      final rad = Random().nextInt(themeData.fontSize.round());
      setState(() {
        themeData.primary = c.toColor();
        // themeData.fontSize = fontSize / 1;
        themeData.radius = rad / 1;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final td = TonalThemeData.lerp(
              oldThemeData ?? themeData, themeData, _controller.value);
          return TonalTheme(
            key: ValueKey(_controller.value),
            data: td,
            child: DefaultTextStyle(
              style: TextStyle(
                fontSize: td.fontSize,
              ),
              child: widget.home,
            ),
          );
        },
      ),
    );
  }
}
