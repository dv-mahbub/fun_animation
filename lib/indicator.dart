import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.isIndiacatorVisible,
  });

  final bool isIndiacatorVisible;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 230,
        height: 200,
        child: isIndiacatorVisible
            ? Lottie.asset('assets/json/indicator.json')
            : Container());
  }
}

