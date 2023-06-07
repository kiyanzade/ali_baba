import 'package:ali_baba/auth/auth.dart';
import 'package:ali_baba/common/logInReq.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTravelScreen extends StatelessWidget {
  const MyTravelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<AuthInfo?>(
      builder: (context, authInfo, child) {
        final bool isLogin =
            authInfo != null && authInfo.phoneNumber.isNotEmpty;
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          appBar: AppBar(
            toolbarHeight: 72,
            title: Column(
              children: [
                Text(
                  'سفرهای من',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 8,
                )
              ],
            ),
            centerTitle: true,
          ),
          body: isLogin
              ? Center(child: Text('my travel'))
              : LoginRequestScreen(
                  iconUrl: 'assets/images/travels_login.png',
                  message:
                      'برای دسترسی به سفرهای من باید ثبت نام کنید و یا وارد حساب کاربری خود شوید'),
        );
      },
      valueListenable: Auth.authChangeNotifier,
    );
  }
}
