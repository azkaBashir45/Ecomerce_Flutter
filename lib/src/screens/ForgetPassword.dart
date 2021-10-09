import 'package:flutter/material.dart';
import 'package:fryo/src/screens/SignInPage.dart';
import 'package:fryo/src/shared/colors.dart';
import 'package:fryo/src/shared/inputFields.dart';
import 'package:fryo/src/shared/styles.dart';
import 'package:page_transition/page_transition.dart';

import 'Dashboard.dart';
import 'SignUpPage.dart';

class ForgetPassword extends StatefulWidget {
  // const ForgetPassword({ Key? key }) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Container(
          margin: EdgeInsets.only(top: 476),
          padding: EdgeInsets.symmetric(horizontal: 5),
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            ),
          ),
          child: Column(children: [
            // appBar: AppBar(

            // elevation: 0,
            // backgroundColor: white,
            // title:
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      right: 18,
                    ),
                    // color: primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: primaryColor),
                      borderRadius: BorderRadius.circular(22),
                    ),

                    child: Center(
                      child: GestureDetector(
                        child: Text('Sign In',
                            style: TextStyle(
                                color: primaryColor,
                                fontFamily: 'Poppins',
                                fontSize: 15)),
                      ),
                    ),
                  ),
                ),
                // Expanded(
                //   child: SizedBox(
                //     width: 75,
                //   ),
                // ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    margin: EdgeInsets.only(
                      right: 30,
                    ),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.of(context).pushReplacementNamed('/signup');
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: SignUpPage()));
                        },
                        child: Text('Sign Up', style: contrastText),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Reset Password!', style: h3),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, left: 8),
                    child:
                        Text('Pasha, let\'s rest password', style: taglineText),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: fryoEmailInput('Email Address'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 270, top: 30),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: SignInPage()));
                      },
                      color: primaryColor,
                      padding: EdgeInsets.all(13),
                      shape: CircleBorder(),
                      child: Icon(Icons.arrow_forward, color: white),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
