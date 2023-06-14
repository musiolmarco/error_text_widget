import 'dart:developer';

import 'package:error_text_widget/error_text_widget.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ErrorTextWidget(
          titleText: 'This is a sample title',
          titleTextStyle: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
          ),
          descriptionText: 'This is a sample description',
          descriptionTextStyle: TextStyle(
            color: Colors.redAccent[200],
          ),
          onRefreshIcon: Icon(
            Icons.refresh,
            color: Colors.redAccent[700],
          ),
          onRefresh: () => log('Refreshing data...'),
        ),
      ),
    );
  }
}
