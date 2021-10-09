import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/inputFields.dart';
import 'package:page_transition/page_transition.dart';
import './SignUpPage.dart';
import './Dashboard.dart';
import 'ForgetPassword.dart';

class SignInPage extends StatefulWidget {
  final String pageTitle;

  SignInPage({Key key, this.pageTitle}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Container(
          margin: EdgeInsets.only(top: 379),
          padding: EdgeInsets.symmetric(horizontal: 5),
          height: 380,
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
              padding: EdgeInsets.only(left: 20, right: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Text('Welcome Back!', style: h3),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child:
                        Text('Pasha, let\'s authenticate', style: taglineText),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: fryoTextInput('Username'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: fryoPasswordInput('Password'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ForgetPassword()));
                      },
                      child: Text('Forgot Password?', style: contrastTextBold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 270),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: Dashboard()));
                      },
                      color: primaryColor,
                      padding: EdgeInsets.all(10),
                      shape: CircleBorder(),
                      child: Icon(Icons.arrow_forward, color: white),
                    ),
                  ),
                ],
              ),
            ),

            // decoration: authPlateDecoration,
            //

            // ListView(
            //   shrinkWrap: true,
            //   children: <Widget>[
            // Container(
            //   padding: EdgeInsets.only(left: 18, right: 18),
            //   child: Stack(
            //     children: <Widget>[
            //       Column(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: <Widget>[
            //           Text('Welcome Back!', style: h3),
            //           Text('Pasha, let\'s authenticate',
            //               style: taglineText),
            //           fryoTextInput('Username'),
            //           fryoPasswordInput('Password'),
            //           FlatButton(
            //             onPressed: () {},
            //             child: Text('Forgot Password?',
            //                 style: contrastTextBold),
            //           )
            //         ],
            //       ),
            //       Positioned(
            //         top: 200,
            //         right: -15,
            //         child: FlatButton(
            //           onPressed: () {
            //             Navigator.pushReplacement(
            //                 context,
            //                 PageTransition(
            //                     type: PageTransitionType.rightToLeft,
            //                     child: Dashboard()));
            //           },
            //           color: primaryColor,
            //           padding: EdgeInsets.all(13),
            //           shape: CircleBorder(),
            //           child: Icon(Icons.arrow_forward, color: white),
            //         ),
            //       )
            //     ],
            //   ),
            //   height: 190,

            //   width: double.infinity,
            //   // decoration: authPlateDecoration,
            //   //
            // ),
            //   ],
            // )
          ]),
        ));

    //  Scaffold(
    //     backgroundColor: primaryColor,
    //     appBar: AppBar(
    //       elevation: 0,
    //       backgroundColor: white,
    //       title: Text('Sign In',
    //           style: TextStyle(
    //               color: Color(0xff7393B3),
    //               fontFamily: 'Poppins',
    //               fontSize: 15)),
    //       actions: <Widget>[
    //         FlatButton(
    //           onPressed: () {
    //             // Navigator.of(context).pushReplacementNamed('/signup');
    //             Navigator.pushReplacement(
    //                 context,
    //                 PageTransition(
    //                     type: PageTransitionType.rightToLeft,
    //                     child: SignUpPage()));
    //           },
    //           child: Text('Sign Up', style: contrastText),
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
    //                   Text('Welcome Back!', style: h3),
    //                   Text('Pasha, let\'s authenticate', style: taglineText),
    //                   fryoTextInput('Username'),
    //                   fryoPasswordInput('Password'),
    //                   FlatButton(
    //                     onPressed: () {},
    //                     child:
    //                         Text('Forgot Password?', style: contrastTextBold),
    //                   )
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
    //           height: 245,
    //           color: Colors.orange,
    //           width: double.infinity,
    //           decoration: authPlateDecoration,
    //           //
    //         ),
    //       ],
    //     ));
  }
}
