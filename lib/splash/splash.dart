import 'package:ali_baba/root/root.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class SplashSceen extends StatefulWidget {
  const SplashSceen({super.key});

  @override
  State<SplashSceen> createState() => _SplashSceenState();
}

class _SplashSceenState extends State<SplashSceen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: const Root())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Image.asset(
                    'assets/images/ali_baba_logo.png',
                  ),
                ),
                const SizedBox(
                  height: 52,
                ),
                const SpinKitThreeBounce(
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
            Positioned(bottom: 10, child: Text('8.9.7'.toPersianDigit()))
          ],
        ),
      ),
    );
  }
}
