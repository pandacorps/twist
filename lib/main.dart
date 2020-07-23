import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twist',
      theme: ThemeData.from(
          colorScheme: const ColorScheme(
              primary: Color(0xff424242),
              primaryVariant: Color(0xff1b1b1b),
              secondary: Color(0xffab47bc),
              secondaryVariant: Color(0xff790e8b),
              surface: Color(0xffffffff),
              background: Color(0xffffffff),
              error: Color(0xbff00020),
              onPrimary: Color(0xffffffff),
              onSecondary: Color(0xffffffff),
              onSurface: Color(0xff000000),
              onBackground: Color(0xff000000),
              onError: Color(0xffffffff),
              brightness: Brightness.light),
          textTheme: Theme.of(context).textTheme.merge(const TextTheme(
              bodyText1: TextStyle(fontFamily: 'NotoSans'),
              bodyText2: TextStyle(fontFamily: 'NotoSans')))),
      home: const HomePage(title: 'Write with a Twist'),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Hello World!',
            ),
          ],
        ),
      ),
    );
  }
}
