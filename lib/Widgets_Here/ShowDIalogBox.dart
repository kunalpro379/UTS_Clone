import 'dart:async';
import 'package:flutter/material.dart';

import 'dart:async';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final String? title;
  final String? content;
  final Duration duration;

  const DialogBox({
    Key? key,
    this.title,
    this.content,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircularProgressIndicator(
            color: Colors.orange,
          ),
          SizedBox(
            width: 5,
          ),
          Text(content!),
        ],
      ),
    );
  }

  void showWithAutoClose(BuildContext context, VoidCallback onClose) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return this;
      },
    );
    Timer(duration, () {
      Navigator.of(context).pop();
      onClose();
    });
  }
}
