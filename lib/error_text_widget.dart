library error_text_widget;

import 'package:flutter/material.dart';

/// A simple [Widget] displaying a title and a description for handling errors
///
/// It's also available to pass a function that is used to execute a method again
/// (For example fetching some data if it failed)
class ErrorTextWidget extends StatelessWidget {
  /// The static title that will be used if no [titleText] is passed
  static String _defaultTitleText = 'An error occured';

  /// The static title [TextStyle] that will be used if no [titleTextStyle] is passed
  static TextStyle _defaultTitleTextStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24.0,
  );

  /// The static description that will be used if no [descriptionText] is passed
  static String _defaultDescriptionText =
      'An error has occurred, please try again.';

  /// The static description [TextStyle] that will be used if no [descriptionTextStyle] is passed
  static TextStyle? _defaultDescriptionTextStyle;

  /// The static default [Icon] that executes the [onRefresh] method
  static Icon _defaultOnRefreshIcon = const Icon(
    Icons.refresh,
  );

  /// The static default [TextOverflow] for the title
  static TextOverflow? _defaultTitleTextOverflow;

  /// The static default [TextOverflow] for the description
  static TextOverflow? _defaultDescriptionTextOverflow;

  /// The [String] that is displayed at the top as title
  final String? titleText;

  /// The [TextStyle] of the [titleText]
  final TextStyle? titleTextStyle;

  /// The [String] that is displayed below the [titleText] as a smaller description
  final String? descriptionText;

  /// The [TextStyle] of the [descriptionText]
  final TextStyle? descriptionTextStyle;

  /// A method that will be executed if the user clicks on the refresh [Icon]
  ///
  /// Pass nothing or [null] if there should no refresh button
  final VoidCallback? onRefresh;

  /// Customize the [Icon] that is displayed for executing the [onRefresh] method
  final Icon? onRefreshIcon;

  /// [TextOverflow] for the description text widget
  final TextOverflow? descriptionTextOverflow;

  /// [TextOverflow] for the title text widget
  final TextOverflow? titleTextOverflow;

  /// [Color] that will overwrite the title [TextStyle] color
  final Color? titleColor;

  /// [Color] that will overwrite the description [TextStyle] color
  final Color? descriptionColor;

  const ErrorTextWidget({
    super.key,
    this.titleText,
    this.titleTextStyle,
    this.descriptionText,
    this.descriptionTextStyle,
    this.onRefresh,
    this.onRefreshIcon,
    this.titleTextOverflow,
    this.descriptionTextOverflow,
    this.descriptionColor,
    this.titleColor,
  });

  /// This method can be used to setup default values for the widget
  ///
  /// It will change the static default values
  static void setup({
    String? defaultTitleText,
    TextStyle? defaultTitleTextStyle,
    String? defaultDescriptionText,
    TextStyle? defaultDescriptionTextStyle,
    Icon? defaultOnRefreshIcon,
    TextOverflow? defaultTitleTextOverflow,
    TextOverflow? defaultDescriptionTextOverflow,
  }) {
    if (defaultTitleText != null) {
      _defaultTitleText = defaultTitleText;
    }
    if (defaultTitleTextStyle != null) {
      _defaultTitleTextStyle = defaultTitleTextStyle;
    }
    if (defaultDescriptionText != null) {
      _defaultDescriptionText = defaultDescriptionText;
    }
    if (defaultDescriptionTextStyle != null) {
      _defaultDescriptionTextStyle = defaultDescriptionTextStyle;
    }
    if (defaultOnRefreshIcon != null) {
      _defaultOnRefreshIcon = defaultOnRefreshIcon;
    }
    if (defaultTitleTextOverflow != null) {
      _defaultTitleTextOverflow = defaultTitleTextOverflow;
    }
    if (defaultDescriptionTextOverflow != null) {
      _defaultDescriptionTextOverflow = defaultDescriptionTextOverflow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Text(
            titleText ?? _defaultTitleText,
            style: titleTextStyle?.copyWith(
                  color: titleColor,
                ) ??
                _defaultTitleTextStyle.copyWith(
                  color: titleColor,
                ),
            textAlign: TextAlign.center,
            overflow: _defaultTitleTextOverflow ?? titleTextOverflow,
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Flexible(
          child: Text(
            descriptionText ?? _defaultDescriptionText,
            textAlign: TextAlign.center,
            style: descriptionTextStyle?.copyWith(color: descriptionColor) ??
                _defaultDescriptionTextStyle?.copyWith(
                  color: descriptionColor,
                ),
            overflow:
                _defaultDescriptionTextOverflow ?? descriptionTextOverflow,
          ),
        ),
        if (onRefresh != null)
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: IconButton(
              onPressed: onRefresh,
              icon: onRefreshIcon ?? _defaultOnRefreshIcon,
            ),
          ),
      ],
    );
  }
}
