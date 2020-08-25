import 'package:json_annotation/json_annotation.dart';
import 'package:twist/models/project_type.dart';

import 'base_model.dart';
part 'project.g.dart';

@JsonSerializable()
class Project extends BaseModel {
  String title;
  String description;
  ProjectType type;

  Project({
    this.title,
    this.description,
    this.type,
    String id,
  }) : super(id: id);

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
