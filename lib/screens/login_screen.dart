import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/screens/sing_up_screen.dart';
import 'package:task_manager/utils/app_color.dart';
import 'package:task_manager/widgets/screen_background.dart';

import 'forget_password_email_verification.dart';
import 'new_task_screen.dart';
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
                SizedBox(height: 25),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password'
                  ),
                ),
                SizedBox(height: 25,),
                FilledButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NewTaskScreen()));
                }, child: Icon(Icons.arrow_circle_right_outlined)),

                SizedBox(height: 55,),
                Center(
                  child: Column(children: [
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordEmailVerification()));

                    }, child: Text('Forget Password ?',style: TextStyle(color: Colors.grey))),
                    RichText(text: TextSpan(
                      text: "Don't have an account? ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                          text: 'Sign up', style: TextStyle(
                          color: AppColor.Pcolor,
                          fontWeight: FontWeight.bold
                        ),
                          recognizer: TapGestureRecognizer()..onTap = (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SingUpScreen()));
                          }
                        )
                      ]
                    )
                    )
                  ],),
                )
              ],
            ),
          )
      ),
    );
  }
}
