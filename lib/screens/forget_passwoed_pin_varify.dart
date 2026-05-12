import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../widgets/screen_background.dart';
import 'forget_password_set_password.dart';
import 'login_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class ForgetPasswoedPinVarify extends StatefulWidget {
  const ForgetPasswoedPinVarify({super.key});

  @override
  State<ForgetPasswoedPinVarify> createState() => _ForgetPasswoedPinVarifyState();
}

class _ForgetPasswoedPinVarifyState extends State<ForgetPasswoedPinVarify> {
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
            Text('Pin Verification',style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 25,),
            PinCodeTextField(
              appContext: context,
              length: 6,
              obscureText: false,
              animationType: AnimationType.fade,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius:BorderRadius.circular(7),
                fieldWidth: 40,
                fieldHeight: 50,
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                inactiveColor: Colors.grey.shade300,
                selectedColor: AppColor.Pcolor
              ),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(height: 25),
            FilledButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordSetPassword()));
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
