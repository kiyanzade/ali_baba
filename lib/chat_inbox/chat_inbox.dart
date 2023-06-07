import 'package:ali_baba/auth/auth.dart';
import 'package:ali_baba/common/logInReq.dart';
import 'package:flutter/material.dart';

class ChatInboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      appBar: AppBar(
        toolbarHeight: 72,
        title: Text("صندوق پیام‌ها",style: Theme.of(context).textTheme.bodyLarge,),
      ),
      body: ValueListenableBuilder<AuthInfo?>(
        builder: (context, authInfo, child) {
          final bool isLogin =
              authInfo != null && authInfo.phoneNumber.isNotEmpty;
          return isLogin
              ? Center(child: Text('chat inbox'))
              : LoginRequestScreen(
                  iconUrl: 'assets/images/chat_login.png',
                  message:
                      "برای دسترسی پیام‌ها باید ثبت نام کنید و یا وارد حساب کاربری خود شوید");
        },
        valueListenable: Auth.authChangeNotifier,
      ),
    );
  }
}
