import 'package:flutter/material.dart';
import 'package:task_manager/screens/sing_up_screen.dart';
import 'package:task_manager/screens/splash_screen.dart';
import 'package:task_manager/utils/app_color.dart';
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
        ),

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none
          ),
        ),

          filledButtonTheme: FilledButtonThemeData(
          style:FilledButton.styleFrom(
            backgroundColor: AppColor.Pcolor,
           fixedSize: Size.fromWidth(double.maxFinite),
            padding: EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            )
          )
      )
      ),
      title: 'Task manager',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
