library error_text_widget;

import 'package:flutter/material.dart';

/// A simple [Widget] displaying a title and a description for handling errors
///
/// It's also available to pass a function that is used to execute a method again
/// (For example fetching some data if it failed)
class ErrorTextWidget extends StatelessWidget {
  /// The [String] that is displayed at the top as title
  final String? titleText;

  /// The [TextStyle] of the [titleText]
  final TextStyle? titleFontStyle;

  /// The [String] that is displayed below the [titleText] as a smaller description
  final String? descriptionText;

  /// The [TextStyle] of the [descriptionText]
  final TextStyle? descriptionFontStyle;

  /// A method that will be executed if the user clicks on the refresh [Icon]
  ///
  /// Pass nothing or [null] if there should no refresh button
  final VoidCallback? onRefresh;

  /// Customize the [Icon] that is displayed for executing the [onRefresh] method
  final Icon? onRefreshIcon;

  const ErrorTextWidget({
    super.key,
    this.titleText,
    this.titleFontStyle,
    this.descriptionText,
    this.descriptionFontStyle,
    this.onRefresh,
    this.onRefreshIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          titleText ?? 'An error occured',
          style: titleFontStyle ??
              const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          descriptionText ?? 'An error has occurred, please try again.',
          textAlign: TextAlign.center,
          style: descriptionFontStyle,
        ),
        if (onRefresh != null)
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: IconButton(
              onPressed: onRefresh,
              icon: onRefreshIcon ??
                  const Icon(
                    Icons.refresh,
                  ),
            ),
          ),
      ],
    );
  }
}
