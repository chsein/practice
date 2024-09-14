import 'package:flutter/material.dart';
import 'package:flutter_application_1/viewModel/login_view_model.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.traffic_sharp,
                size: 40,
              ),
              Text(
                'DEVKOR',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          const Row(
            children: [
              SizedBox(
                width: 24,
              ),
              Text(
                '로그인',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 34,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '아이디',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  onChanged: (value) => LoginViewModel.username = value,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '비밀번호',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  onChanged: (value) => LoginViewModel.password = value,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 34),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                        minimumSize: Size(155, 51),
                        backgroundColor: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () => LoginViewModel.joinclicked(context),
                    child: const Text(
                      '회원가입',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                        minimumSize: Size(155, 51),
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () async =>
                        await LoginViewModel.loginclicked(context),
                    child: const Text(
                      '로그인',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
