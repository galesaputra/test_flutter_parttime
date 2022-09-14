import 'package:flutter/material.dart';
import 'package:test_parttime/widget/atoms/text_widget.dart';

class PrimaryButton extends StatelessWidget {
  final String? text;
  final Widget? child;
  final VoidCallback? onTap;
  final double? width;
  final double? padding;
  final bool? enabled;
  final bool? isOutline;
  final Color? buttonColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? outLineColor;
  final double? radius;

  const PrimaryButton(
      {this.text,
      this.child,
      this.onTap,
      this.width,
      this.enabled = true,
      this.isOutline = false,
      this.buttonColor = Colors.black,
      this.textColor = Colors.white,
      this.fontSize = 14,
      this.fontWeight = FontWeight.w500,
      this.outLineColor,
      this.radius = 30,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: width ?? double.infinity,
      buttonColor: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius!),
        side: BorderSide(
          color: isOutline! ? outLineColor! : Colors.transparent,
          width: isOutline! ? 2 : 0,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: padding ?? 16),
      disabledColor: buttonColor,
      child: RaisedButton(
          child: child ??
              CText(
                "$text",
                color: textColor!,
                fontSize: fontSize!,
                fontWeight: fontWeight,
              ),
          color: buttonColor,
          onPressed: enabled! ? onTap : null,
          elevation: 0,
          hoverElevation: 0,
          focusElevation: 0,
          highlightElevation: 0),
    );
  }
}
