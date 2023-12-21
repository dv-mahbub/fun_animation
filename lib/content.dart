import 'package:flutter/material.dart';
import 'package:fun_animation/main.dart';
import 'package:fun_animation/slider.dart';
import 'package:lottie/lottie.dart';

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.isWorking,
    required this.sliderVisibility,
  });

  final bool isWorking;
  final bool sliderVisibility;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Lottie.asset(isWorking ? workingJsonFile : tourJsonFile),
        MySlider(sliderVisibility: sliderVisibility),
      ],
    );
  }
}
