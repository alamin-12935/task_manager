import 'package:flutter/material.dart';
import 'package:task_manager/widgets/screen_background.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(child: 
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 150,),
                Text('Get Started With',style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: 25,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email'
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password'
                  ),
                ),
                SizedBox(height: 10,),
                FilledButton(onPressed: (){}, child: Icon(Icons.arrow_circle_right_outlined))
              ],
            ),
          )
      ),
    );
  }
}
