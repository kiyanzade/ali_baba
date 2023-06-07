import 'package:ali_baba/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginRequestScreen extends StatelessWidget {
  final String iconUrl;
  final String message;

  const LoginRequestScreen(
      {super.key, required this.iconUrl, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 100,),
        Image.asset(
          iconUrl,
          width: 180,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'لطفا وارد شوید یا ثبت نام کنید',
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 42, right: 42),
          child: Text(
            textAlign: TextAlign.center,
            message,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
        SizedBox(height: 16),
        ElevatedButtomLogin(),
      ],
    );
  }
}
