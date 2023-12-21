import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MySlider extends StatelessWidget {
  const MySlider({
    super.key,
    required this.sliderVisibility,
  });

  final bool sliderVisibility;

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: sliderVisibility,
        child: Padding(
          padding: const EdgeInsets.only(top: 73.0),
          child: Lottie.asset(
            'assets/json/slider.json',
          ),
        ));
  }
}
