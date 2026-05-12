import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../widgets/screen_background.dart';
import 'forget_passwoed_pin_varify.dart';
import 'login_screen.dart';
class ForgetPasswordSetPassword extends StatefulWidget {
  const ForgetPasswordSetPassword({super.key});

  @override
  State<ForgetPasswordSetPassword> createState() => _ForgetPasswordSetPasswordState();
}

class _ForgetPasswordSetPasswordState extends State<ForgetPasswordSetPassword> {
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
            Text('Set Password',style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 25,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Password'
              ),
            ),SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Confirm Password'
              ),
            ),
            SizedBox(height: 25),
            FilledButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswoedPinVarify()));
            }, child: Icon(Icons.arrow_circle_right_outlined)),

            SizedBox(height: 40),
            Center(
              child: Column(children: [
                RichText(text: TextSpan(
                    text: "Have account? ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                          text: 'Sign In', style: TextStyle(
                          color: AppColor.Pcolor,
                          fontWeight: FontWeight.bold
                      ),
                          recognizer: TapGestureRecognizer()..onTap = (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
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
