import 'package:flutter_application_1/model/user_model.dart';
import 'package:flutter_application_1/view/join_screen.dart';
import 'package:flutter_application_1/view/login_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => LoginScreen()),
  GoRoute(path: '/join', builder: (context, state) => JoinScreen()),
]);
