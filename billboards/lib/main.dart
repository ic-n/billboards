import 'package:billboards/card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        fontFamily: 'SpaceGrotesk',
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        body: Center(
          child: Wrap(
            children: [1, 2, 3, 4]
                .map((e) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: EdgeInsets.all(8),
                      clipBehavior: Clip.antiAlias,
                      width: 300,
                      height: 400,
                      child: OnionCard(),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
