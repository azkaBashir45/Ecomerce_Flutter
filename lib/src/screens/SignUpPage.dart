import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/inputFields.dart';
import 'package:page_transition/page_transition.dart';
import './SignInPage.dart';
import './Dashboard.dart';

class SignUpPage extends StatefulWidget {
  final String pageTitle;

  SignUpPage({Key key, this.pageTitle}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        margin: EdgeInsets.only(top: 266),
        height: 490,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
        ),
        child: Column(
          children: [
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
                        child: Text('Sign Up',
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
                                  child: SignInPage()));
                        },
                        child: Text('Sign In', style: contrastText),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.only(left: 20, right: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0, left: 6),
                    child: Text('Welcome to Pasha!', style: h3),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text('Let\'s get started', style: taglineText),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: fryoTextInput('Username'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: fryoTextInput('Full Name'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: fryoEmailInput('Email Address'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: fryoPasswordInput('Password'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 270, top: 30),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: Dashboard()));
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
          ],
        ),
      ),
    );

    // return Scaffold(
    //     appBar: AppBar(
    //       elevation: 0,
    //       backgroundColor: white,
    //       title: Text('Sign Up',
    //           style: TextStyle(
    //               color: Color(0xff7393B3),
    //               fontFamily: 'Poppins',
    //               fontSize: 15)),
    //       actions: <Widget>[
    //         FlatButton(
    //           onPressed: () {
    //             // Navigator.of(context).pushReplacementNamed('/signin');
    //             Navigator.pushReplacement(
    //                 context,
    //                 PageTransition(
    //                     type: PageTransitionType.rightToLeft,
    //                     child: SignInPage()));
    //           },
    //           child: Text('Sign In', style: contrastText),
    //         )
    //       ],
    //     ),
    //     body: ListView(
    //       shrinkWrap: true,
    //       children: <Widget>[
    //         Container(
    //           padding: EdgeInsets.only(left: 18, right: 18),
    //           child: Stack(
    //             children: <Widget>[
    //               Column(
    //                 mainAxisAlignment: MainAxisAlignment.start,
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: <Widget>[
    //                   Text('Welcome to Pasha!', style: h3),
    //                   Text('Let\'s get started', style: taglineText),
    //                   fryoTextInput('Username'),
    //                   fryoTextInput('Full Name'),
    //                   fryoEmailInput('Email Address'),
    //                   fryoPasswordInput('Password')
    //                 ],
    //               ),
    //               Positioned(
    //                 bottom: 15,
    //                 right: -15,
    //                 child: FlatButton(
    //                   onPressed: () {
    //                     Navigator.pushReplacement(
    //                         context,
    //                         PageTransition(
    //                             type: PageTransitionType.rightToLeft,
    //                             child: Dashboard()));
    //                   },
    //                   color: primaryColor,
    //                   padding: EdgeInsets.all(13),
    //                   shape: CircleBorder(),
    //                   child: Icon(Icons.arrow_forward, color: white),
    //                 ),
    //               )
    //             ],
    //           ),
    //           height: 360,
    //           width: double.infinity,
    //           decoration: authPlateDecoration,
    //         ),
    //       ],
    //     ));
  }
}
