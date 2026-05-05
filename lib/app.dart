import 'package:flutter/material.dart';
import 'package:task_manager/screens/splash_screen.dart';
class taskmanagerapp extends StatelessWidget {
  const taskmanagerapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600
          )
        )
      ),
      title: 'Task manager',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
