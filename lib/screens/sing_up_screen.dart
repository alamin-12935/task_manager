
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../widgets/screen_background.dart';
import 'login_screen.dart';
class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
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
            Text('Join With Us',style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 25,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Email'
              ),
            ),
            SizedBox(height: 25),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'First Name'
              ),
            ),
            SizedBox(height: 25),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Last Name'
              ),
            ),
            SizedBox(height: 25),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Mobile'
              ),
            ),
            SizedBox(height: 25),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'password'
              ),
            ),

            SizedBox(height: 25,),
            FilledButton(onPressed: (){}, child: Icon(Icons.arrow_circle_right_outlined)),

            SizedBox(height: 35,),
            Center(
              child: Column(children: [
                RichText(text: TextSpan(
                    text: "Have account? ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                          text: 'Sign In', style: TextStyle(
                          color: AppColor.Pcolor
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
