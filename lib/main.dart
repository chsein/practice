import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/api_service.dart';
import 'package:flutter_application_1/routes/router.dart';
import 'package:flutter_application_1/view/home_screen.dart';
import 'package:flutter_application_1/view/login_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
