import 'package:flutter/material.dart';
import 'package:fun_animation/content.dart';
import 'package:fun_animation/indicator.dart';
import 'package:lottie/lottie.dart';


String workingJsonFile = 'assets/json/work.json';
String tourJsonFile = 'assets/json/tour.json';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isIndiacatorVisible = true;
  bool isWorking = true;
  bool sliderVisibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 4,
            ),
            Content(isWorking: isWorking, sliderVisibility: sliderVisibility),
            const Spacer(
              flex: 3,
            ),
            Indicator(isIndiacatorVisible: isIndiacatorVisible)
          ],
        ),
      ),
      floatingActionButton: changeButton(),
    );
  }

  Widget changeButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 75),
      child: Ink(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
        child: InkWell(
          onTap: () async {
            if (mounted) {
              setState(() {
                isIndiacatorVisible = false;
                sliderVisibility = true;
              });
            }
            await Future.delayed(const Duration(seconds: 1), () {
              setState(() {
                isWorking = !isWorking;
              });
            });
            await Future.delayed(const Duration(milliseconds: 270), () {
              setState(() {
                sliderVisibility = false;
              });
            });
          },
          child: Ink(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 40,
                child: Lottie.asset('assets/json/change.json')),
          ),
        ),
      ),
    );
  }
}
