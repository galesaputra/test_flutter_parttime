import 'package:flutter/material.dart';
import 'package:test_parttime/widget/atoms/text_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class VToast {
  static showCustom(BuildContext context, String message, Color color) {
    var toast = FToast();

    toast.init(context);
    toast.showToast(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: color,
          ),
          child: CText(
            message,
            align: TextAlign.center,
            overflow: TextOverflow.visible,
            color: Colors.white,
          ),
        ),
        toastDuration: Duration(milliseconds: 3500),
        gravity: ToastGravity.TOP);
  }
}
