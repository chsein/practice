/*
import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int totalSeconds = 1500;
  bool isRunning = false;
  int totalPomodors = 0;

  late Timer timer;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalPomodors = totalPomodors + 1;
        isRunning = false;
        totalSeconds = 1500;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void onResetPressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
      totalSeconds = 1500;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void onStartPressed() {
    timer = Timer.periodic(
      Duration(seconds: 1),
      onTick,
    );
    setState(() {
      isRunning = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    '$totalSeconds',
                    style: TextStyle(
                      color: Theme.of(context).cardColor,
                      fontSize: 89,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
            ),
            Flexible(
              flex: 3,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      iconSize: 120,
                      color: Theme.of(context).cardColor,
                      onPressed: isRunning ? onPausePressed : onStartPressed,
                      icon: Icon(isRunning
                          ? Icons.pause_circle_outline
                          : Icons.play_circle_outline),
                    ),
                    TextButton(
                        onPressed: onResetPressed,
                        child: Text(
                          'Reset',
                          style: TextStyle(
                              color: Theme.of(context).cardColor,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Pomodoros',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context)
                                      .textTheme
                                      .headlineLarge
                                      ?.color,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '$totalPomodors',
                              style: TextStyle(
                                  fontSize: 58,
                                  color: Theme.of(context)
                                      .textTheme
                                      .headlineLarge
                                      ?.color,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
*/
