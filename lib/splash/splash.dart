import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class SplashSceen extends StatelessWidget {
  const SplashSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Image.asset(
                    'assets/images/ali_baba_logo.png',
                  ),
                ),
                const SizedBox(
                  height: 52,
                ),
                SpinKitThreeBounce(
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
