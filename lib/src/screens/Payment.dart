import 'package:flutter/material.dart';
import 'package:fryo/src/shared/colors.dart';
import 'package:fryo/src/shared/styles.dart';

class Payment extends StatefulWidget {
  const Payment();
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 21,
            icon: Icon(
              Icons.arrow_back,
              color: fontColor,
            )),
        backgroundColor: whiteColor,
        title:
            Text('Payment', style: logoWhiteStyle, textAlign: TextAlign.center),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: 150,
            width: 330,
            child: Card(
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(color: primaryColor)),
              color: primaryColor,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, left: 20),
                    child: Text(
                      'Credit Card',
                      style: TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0, left: 20),
                    child: Text(
                      '3456  4456  6789  4567',
                      style: TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 100.0, left: 20),
                        child: Text(
                          'Paypal',
                          style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 100.0, left: 190),
                          child: Image.asset(
                            'images/shoe3.jpg',
                            width: 20,
                            height: 20,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 180),
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Choose Payment Method',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(top: 214, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // This next line does the trick.

                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 2, color: primaryColor)),
                    child: Image.asset(
                      'images/shoe2.jpg',
                      width: 60,
                      height: 40,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      'images/shoe6.jpg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      'images/shoe6.jpg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      'images/shoe6.jpg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      'images/shoe6.jpg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      'images/shoe6.jpg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      'images/shoe6.jpg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 280, left: 20),
            child: Text(
              'Promo code',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Poppins'),
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  width: 230,
                  margin: EdgeInsets.only(top: 325, left: 20),
                  child: TextField(
                    cursorColor: primaryColor,
                    decoration: InputDecoration(
                      hintText: 'Promo code',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: whiteColor, width: 2.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 320),
                  height: 56,
                  width: 86,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: primaryColor),
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Apply',
                        style: TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          // fontSize: 18,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(),
          Container(
              margin: EdgeInsets.only(top: 540, left: 20),
              child: Row(
                children: [
                  Text(
                    'Total Payment',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    '100.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 580, left: 75),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => Payment()));
              },
              child: Text(
                'Pay',
                style:
                    TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(220, 20),
                  primary: primaryColor,
                  shape: StadiumBorder()),
            ),
          ),
        ],
      ),
    );
  }
}
