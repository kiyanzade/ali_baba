import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

final Auth authRepo = Auth();

class AuthInfo {
  final String phoneNumber;
  AuthInfo(
    this.phoneNumber,
  );
}

class Auth {
  static final ValueNotifier<AuthInfo?> authChangeNotifier =
      ValueNotifier(null);

  Future<void> persistAuthInfo(AuthInfo authInfo) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString("phoneNumber", authInfo.phoneNumber);
    loadAuthInfo();
  }

  Future<void> loadAuthInfo() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final String phoneNumber = sharedPreferences.getString("phoneNumber") ?? "";
    if (phoneNumber.isNotEmpty) {
      authChangeNotifier.value = AuthInfo(phoneNumber);
    }
  }
    Future<void> signOut() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.clear();
    authChangeNotifier.value = null;
  }
}
