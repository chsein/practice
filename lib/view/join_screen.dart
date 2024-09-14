import 'package:flutter/material.dart';

class JoinScreen extends StatelessWidget {
  const JoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Row(
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
                '회원가입',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 34,
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '아이디',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '아이디',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
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
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '비밀번호 확인',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
