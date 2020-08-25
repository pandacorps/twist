import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String projectBox = 'project';

class Db {
  static Future init() async {
    await Hive.initFlutter();
    Hive.openBox<Map<String, dynamic>>(projectBox);
  }

  static Box<Map<String, dynamic>> getProjectBox() {
    return Hive.box<Map<String, dynamic>>(projectBox);
  }
}
