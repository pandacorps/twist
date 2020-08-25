import 'package:uuid/uuid.dart';

Uuid uuid = Uuid();

class BaseModel {
  String id;

  BaseModel({this.id}) {
    id = id ?? uuid.v4();
  }
}
