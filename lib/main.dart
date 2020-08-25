import 'package:flutter/material.dart';

import 'app.dart';
import 'db/db.dart';

// ignore: avoid_void_async
void main() async {
  await Db.init();
  runApp(TwistApp());
}
