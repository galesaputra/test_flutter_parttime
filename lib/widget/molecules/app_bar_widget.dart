import 'package:flutter/material.dart';
import 'package:test_parttime/widget/atoms/text_widget.dart';

class CAppBar extends StatelessWidget {
  final String? title;
  final Widget? action;
  final Widget? leading;
  final Color color;
  final Color textColor;
  const CAppBar({
    Key? key,
    this.title,
    this.action,
    this.leading,
    this.color = Colors.white,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // margin: const EdgeInsets.only(top: 16),
        color: color,
        child: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
          ),
          elevation: 1.5,
          backgroundColor: color,
          centerTitle: true,
          title: CText(
            title,
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          leading: leading,
        ),
      ),
    );
  }
}
