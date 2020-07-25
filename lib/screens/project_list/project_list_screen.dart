import 'package:flutter/material.dart';

import '../../constants.dart';

class ProjectListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Projects'),
          centerTitle: true,
        ),
        body: Center(
            child: Container(
                padding: LayoutConstants.defaultPadding,
                alignment: Alignment.center,
                constraints: const BoxConstraints(maxWidth: 300),
                child: Column(
                  children: [
                    Text('Welcome!',
                        style: theme.textTheme.headline1
                            .copyWith(color: theme.colorScheme.onBackground)),
                    const Image(image: AssetImage('assets/placeholder.png')),
                    Text(
                      'Twist helps you complete your writing projects',
                      style: theme.textTheme.bodyText1,
                      textAlign: TextAlign.center,
                    ),
                    RaisedButton(
                      onPressed: () {
                        // TODO: Navigate to project create.
                      },
                      child: const Text('New Project'),
                    ),
                  ],
                ))));
  }
}
