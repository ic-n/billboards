import 'package:billboards/containers.dart';
import 'package:billboards/theme.dart';
import 'package:billboards/theme_app.dart';
import 'package:billboards/theme_data.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TonalApp(
      themeData: TonalThemeData(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Screen(
      children: [
        Line(children: [
          TextCard(
            child: Text("Hello"),
          ),
          TextCard(
            child: Text("Hello"),
          ),
          TextCard(
            child: Text("Hello"),
          ),
        ]),
      ],
    );
  }
}
