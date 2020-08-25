import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:twist/config/routes.dart' as routes;

import 'config/theme.dart';

class TwistApp extends StatefulWidget {
  @override
  State createState() {
    return TwistAppState();
  }
}

class TwistAppState extends State<TwistApp> {
  final router = Router();
  TwistAppState() {
    routes.configureRoutes(router);
  }

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
      initialRoute: routes.projects,
      onGenerateRoute: router.generator,
    );
  }
}
