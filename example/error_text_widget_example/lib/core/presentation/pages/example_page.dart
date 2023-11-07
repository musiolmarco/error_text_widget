import 'dart:developer';

import 'package:error_text_widget/error_text_widget.dart';
import 'package:error_text_widget_example/core/presentation/dialogs/example_error_dialog.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ErrorTextWidget(
              onRefresh: () => log('Refreshing data...'),
            ),
            const SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (_) => const ExampleErrorDialog(),
              ),
              child: const Text(
                'Show error dialog',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
