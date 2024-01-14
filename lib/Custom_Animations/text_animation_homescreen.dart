import 'package:flutter/material.dart';

class FontStyleChangingAnimation extends StatefulWidget {
  @override
  _FontStyleChangingAnimationState createState() =>
      _FontStyleChangingAnimationState();
}

class _FontStyleChangingAnimationState extends State<FontStyleChangingAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<TextStyle> _textStyleAnimation;
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _textStyleAnimation = TextStyleTween(
            begin: TextStyle(
                color: Color.fromARGB(255, 69, 5, 0),
                //fontSize: 15.4,
                fontWeight: FontWeight.w300),
            end: TextStyle(
                color: Color.fromARGB(255, 3, 0, 88),
                //fontSize: 15.8,
                fontWeight: FontWeight.w600))
        .animate(_controller);
    _controller.repeat(reverse: true);
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Column(
          children: [
            Text(
              "INDIAN RAILWAYS OFFERS 3% BONUS ON",
              style: _textStyleAnimation.value,
            ),
            Text(
              "RECHARGE OF R-WALLET.",
              style: _textStyleAnimation.value,
            ),
          ],
        );
      },
    );
  }
}
