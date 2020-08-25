import 'package:flutter/material.dart';
import 'package:twist/screens/new_project/new_project_form.dart';

class NewProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Project'),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: NewProjectForm(),
        ),
      ),
    );
  }
}
