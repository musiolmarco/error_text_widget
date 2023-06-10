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
          onRefresh: () => log('Hello, World!'),
        ),
      ),
    );
  }
}
