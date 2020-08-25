import 'package:twist/db/db.dart';
import 'package:twist/models/project.dart';

class ProjectService {
  static void save(Project project) {
    final projectBox = Db.getProjectBox();
    projectBox.put(project.id, project.toJson());
  }

  static Project get(String id) {
    final projectBox = Db.getProjectBox();
    return Project.fromJson(projectBox.get(id));
  }
}
