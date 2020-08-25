import 'package:flutter/material.dart';
import 'package:twist/services/project_service.dart';

class ProjectScreen extends StatelessWidget {
  final String id;

  const ProjectScreen({this.id});

  @override
  Widget build(BuildContext context) {
    final project = ProjectService.get(id);

    return Scaffold(
      appBar: AppBar(
        title: Text(project.title),
        centerTitle: true,
      ),
      body: const Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Text('Placeholder'),
        ),
      ),
    );
  }
}
