import 'package:error_text_widget/error_text_widget.dart';
import 'package:flutter/material.dart';

class ExampleErrorDialog extends StatelessWidget {
  const ExampleErrorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ErrorTextWidget(),
            const SizedBox(
              height: 15.0,
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Close',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
