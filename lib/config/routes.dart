import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:twist/screens/new_project/new_project_screen.dart';
import 'package:twist/screens/project/project_screen.dart';
import 'package:twist/screens/project_list/project_list_screen.dart';

const String projects = '/projects';
const String newProject = '/projects/new';
const String project = '/project/:id';

void configureRoutes(Router router) {
  router.define(projects, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ProjectListScreen();
  }));

  router.define(newProject, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return NewProjectScreen();
  }));

  router.define(project, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ProjectScreen(id: params['id'].first);
  }));
}
