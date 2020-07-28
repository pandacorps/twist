import 'package:flutter/material.dart';

class ProjectListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 32),
                  child: Text(
                    'Welcome!',
                    style: theme.textTheme.headline1
                        .copyWith(color: theme.colorScheme.onBackground),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: const Image(
                    image: AssetImage('assets/placeholder.png'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: Text(
                    'Twist helps you complete your writing projects',
                    style: theme.textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 32),
                  child: RaisedButton(
                    onPressed: () {
                      // TODO: Navigate to project create.
                    },
                    child: const Text('New Project'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
