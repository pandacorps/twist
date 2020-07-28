import 'package:flutter/material.dart';
import 'package:twist/screens/project_list/project_list_screen.dart';

void main() {
  runApp(TwistApp());
}

const colorScheme = ColorScheme(
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
    brightness: Brightness.light);

class TwistApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Twist',
        theme: ThemeData.from(
                colorScheme: colorScheme,
                textTheme: Theme.of(context).textTheme.merge(const TextTheme(
                    headline1: TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold, height: 1),
                    headline2: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold, height: 1),
                    bodyText1: TextStyle(fontFamily: 'NotoSans'),
                    bodyText2: TextStyle(fontFamily: 'NotoSans'))))
            .copyWith(
                buttonTheme: ButtonThemeData(
                    buttonColor: colorScheme.secondary,
                    textTheme: ButtonTextTheme.primary)),
        initialRoute: '/',
        routes: {'/': (context) => ProjectListScreen()});
  }
}
