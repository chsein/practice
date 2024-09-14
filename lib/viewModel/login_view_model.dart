import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_application_1/api/api_for_id.dart';

class LoginViewModel with ChangeNotifier {
  static String username = '';
  static String password = '';

  static Future<void> loginclicked(BuildContext context) async {
    try {
      var response = await ApiForId.login(username, password);
    } catch (e) {
      print(e);
    }
  }

  static Future<void> joinclicked(BuildContext context) async {
    context.go('/join');
  }
}
