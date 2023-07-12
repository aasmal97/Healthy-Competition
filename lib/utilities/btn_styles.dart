import 'package:flutter/material.dart';

enum ButtonType { primary, tonal, tertiary }

ButtonStyle tonalBtnStyles(BuildContext context, double padding) =>
    TextButton.styleFrom(
        backgroundColor:
            Theme.of(context).buttonTheme.colorScheme?.secondaryContainer,
        padding: EdgeInsets.all(padding));

ButtonStyle primaryBtnStyles(BuildContext context, double padding) =>
    TextButton.styleFrom(
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.primary,
        foregroundColor:
            Theme.of(context).buttonTheme.colorScheme?.primaryContainer,
        padding: EdgeInsets.all(padding));

class GeneralButton extends StatelessWidget {
  const GeneralButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.buttonType,
    this.innerPadding,
    this.outerPadding,
  });
  final String buttonText;
  final VoidCallback? onPressed;
  final ButtonType buttonType;
  final EdgeInsetsGeometry? outerPadding;
  final double? innerPadding;
  @override
  Widget build(BuildContext context) {
    final textColor = buttonType == ButtonType.primary
        ? Theme.of(context).buttonTheme.colorScheme?.onPrimary
        : null;
    final textStyles =
        Theme.of(context).textTheme.bodyLarge?.copyWith(color: textColor);
    return (Padding(
      padding: outerPadding ?? const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextButton(
          onPressed: onPressed,
          style: buttonType == ButtonType.tonal
              ? tonalBtnStyles(context, innerPadding ?? 18)
              : primaryBtnStyles(context, innerPadding ?? 18),
          child: Text(buttonText, style: textStyles)),
    ));
  }
}
