import 'package:flutter/material.dart';
import 'package:world_of_journey/screens/loginPage.dart';
import 'package:world_of_journey/src/constants/colors.dart';
import 'package:world_of_journey/src/constants/image_string.dart';
import 'package:world_of_journey/src/constants/sizes.dart';
import 'package:world_of_journey/src/constants/text_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: animate ? 10 : 0,
            left: animate ? 90 : 0,
            child: Image(
              image: AssetImage(tSplashTopIcon),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: 220,
            left: animate ? 45 : 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tAppName,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  tAppTagLine,
                  style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            bottom: 80,
            left: 65,
            child: Image(
              image: AssetImage(tSplashImage),
            ),
          ),
          Positioned(
            bottom: 40,
            right: tDefaultSize,
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => animate = true);
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
