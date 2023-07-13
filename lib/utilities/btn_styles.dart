import 'package:flutter/material.dart';

enum ButtonType { primary, tonal, tertiary, error }

class BtnStyles {
  TextStyle? textStyles;
  ButtonStyle? buttonStyles;
}

class TonalBtnStyles extends BtnStyles {
  TonalBtnStyles(BuildContext context, double padding) {
    textStyles = Theme.of(context).textTheme.bodyLarge?.copyWith(
        color: Theme.of(context).buttonTheme.colorScheme?.onSecondaryContainer);
    buttonStyles = TextButton.styleFrom(
        backgroundColor:
            Theme.of(context).buttonTheme.colorScheme?.secondaryContainer,
        padding: EdgeInsets.all(padding));
  }
}

class TertiaryBtnStyles extends BtnStyles {
  TertiaryBtnStyles(BuildContext context, double padding) {
    textStyles = Theme.of(context).textTheme.bodyLarge?.copyWith(
        color: Theme.of(context).buttonTheme.colorScheme?.onTertiaryContainer);
    buttonStyles = TextButton.styleFrom(
        backgroundColor:
            Theme.of(context).buttonTheme.colorScheme?.tertiaryContainer,
        padding: EdgeInsets.all(padding));
  }
}

class PrimaryBtnStyles extends BtnStyles {
  PrimaryBtnStyles(BuildContext context, double padding) {
    textStyles = Theme.of(context)
        .textTheme
        .bodyLarge
        ?.copyWith(color: Theme.of(context).buttonTheme.colorScheme?.onPrimary);
    buttonStyles = TextButton.styleFrom(
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.primary,
        foregroundColor:
            Theme.of(context).buttonTheme.colorScheme?.primaryContainer,
        padding: EdgeInsets.all(padding));
  }
}

class ErrorBtnStyles extends BtnStyles {
  ErrorBtnStyles(BuildContext context, double padding) {
    textStyles = Theme.of(context)
        .textTheme
        .bodyLarge
        ?.copyWith(color: Theme.of(context).buttonTheme.colorScheme?.onError);
    buttonStyles = TextButton.styleFrom(
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.error,
        foregroundColor:
            Theme.of(context).buttonTheme.colorScheme?.onErrorContainer,
        padding: EdgeInsets.all(padding));
  }
}

class GeneralButton extends StatelessWidget {
  const GeneralButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      required this.buttonType,
      this.innerPadding,
      this.outerPadding,
      this.icon});
  final String buttonText;
  final VoidCallback? onPressed;
  final ButtonType buttonType;
  final EdgeInsetsGeometry? outerPadding;
  final double? innerPadding;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    ButtonStyle? buttonStyle;
    TextStyle? textStyle;
    //determine btn style
    switch (buttonType) {
      case ButtonType.primary:
        buttonStyle =
            PrimaryBtnStyles(context, innerPadding ?? 18).buttonStyles;
        textStyle = PrimaryBtnStyles(context, innerPadding ?? 18).textStyles;
        break;
      case ButtonType.tonal:
        buttonStyle = TonalBtnStyles(context, innerPadding ?? 18).buttonStyles;
        textStyle = TonalBtnStyles(context, innerPadding ?? 18).textStyles;
        break;
      case ButtonType.tertiary:
        buttonStyle =
            TertiaryBtnStyles(context, innerPadding ?? 18).buttonStyles;
        textStyle = TertiaryBtnStyles(context, innerPadding ?? 18).textStyles;
        break;
      case ButtonType.error:
        buttonStyle = ErrorBtnStyles(context, innerPadding ?? 18).buttonStyles;
        textStyle = ErrorBtnStyles(context, innerPadding ?? 18).textStyles;
        break;
    }
    //add icon if supplied
    final List<Widget> textBtnChildren = [Text(buttonText, style: textStyle)];
    if (icon != null) {
      textBtnChildren.insert(
          0, Icon(icon, size: textStyle?.height, color: textStyle?.color));
    }
    return (Padding(
      padding: outerPadding ?? const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextButton(
          onPressed: onPressed,
          style: buttonStyle,
          child: Row(
            children: textBtnChildren,
          )),
    ));
  }
}
