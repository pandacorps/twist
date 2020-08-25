import 'package:flutter/material.dart';
import 'package:twist/components/base_input_decoration.dart';
import 'package:twist/models/project.dart';
import 'package:twist/models/project_type.dart';
import 'package:twist/services/project_service.dart';

class NewProjectForm extends StatefulWidget {
  @override
  NewProjectFormState createState() {
    return NewProjectFormState();
  }
}

class NewProjectFormState extends State<NewProjectForm> {
  final _formKey = GlobalKey<FormState>();
  Project project = Project();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 24, top: 16),
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: BaseInputDecoration(
                theme: theme,
                hintText: 'My Project',
                labelText: 'Name',
              ),
              onSaved: (String value) {
                project.title = value;
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 24),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.top,
              keyboardType: TextInputType.multiline,
              minLines: 3,
              maxLines: 6,
              decoration: BaseInputDecoration(
                theme: theme,
                labelText: 'Description',
              ),
              onSaved: (String value) {
                project.description = value;
              },
            ),
          ),
          Container(
              margin: const EdgeInsets.only(bottom: 24),
              child: DropdownButtonFormField(
                decoration: BaseInputDecoration(
                  theme: theme,
                  labelText: 'Type',
                ),
                items: ['Journal']
                    .map((label) => DropdownMenuItem(
                          value: ProjectType.journal.index,
                          child: Text(label.toString()),
                        ))
                    .toList(),
                onChanged: (int value) {
                  project.type = ProjectType.values[value];
                },
              )),
          Container(
            margin: const EdgeInsets.only(bottom: 24),
            child: Align(
              alignment: Alignment.bottomRight,
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    ProjectService.save(project);
                    Navigator.pushReplacementNamed(
                      context,
                      '/project/${project.id}',
                    );
                  }
                },
                child: const Text('Create'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
