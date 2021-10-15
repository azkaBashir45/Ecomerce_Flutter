import 'package:flutter/material.dart';
import 'package:fryo/src/shared/Product.dart';
import 'package:fryo/src/shared/colors.dart';
import 'Payment.dart';
import 'package:fryo/src/shared/inputFields.dart';
import 'package:fryo/src/shared/styles.dart';
import 'package:fryo/src/shared/partials.dart';
//https://www.youtube.com/watch?v=kVJOW_M06hI&ab_channel=DevDesign

class CheckOut extends StatefulWidget {
  final Key key;
  final TextEditingController controller;
  final InputDecoration decoration;
  final FormFieldValidator<String> validator;
  final bool obscureText;
  final bool enabled;
  CheckOut({
    this.key,
    this.controller,
    this.decoration,
    this.validator,
    this.obscureText = false,
    this.enabled = true,
  }) : super(key: key);

  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    List<Product> productData = [
      Product(image: 'images/bag.jpg', name: 'Bag', price: '200.00'),
      Product(image: 'images/shoe2.jpg', name: 'Bag', price: '200.00'),
    ];
    var fryoEmailInput2 = fryoEmailInput('Expire Date');
    var fryoEmailInput3 = fryoEmailInput('CVV');
    var fryoEmailInput32 = fryoEmailInput3;
    var fryoEmailInput322 = fryoEmailInput32;
    var fryoEmailInput3222 = fryoEmailInput322;
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
        title: Text('CheckOut',
            style: logoWhiteStyle, textAlign: TextAlign.center),
      ),
      body: Stack(children: [
        Container(
          height: 720,
          width: 360,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(29), topRight: Radius.circular(29)),
          ),
          //listview
          child: Container(
            height: 400,
            margin: EdgeInsets.only(top: 20, bottom: 150),
            padding: EdgeInsets.all(10),
            child: MyCartCard(productData: productData),
          ),
        ),
        //subtotal price
        Container(
          margin: EdgeInsets.only(top: 225),
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text(
                'Product: ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: grey),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                '2',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Colors.black),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                'Subtotal: ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: grey),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                '123.00',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Colors.black),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                'Taxes:',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: grey),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                '40',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Colors.black),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 257),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: fryCheckoutInput('Card Holder Name', icon: Icons.person),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: fryCheckoutInput('Card Number',
                      icon: Icons.format_list_numbered)),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: fryCheckoutInput("Expire Date", icon: Icons.ac_unit),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: fryCheckoutInput("CVV", icon: Icons.card_giftcard),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Payment()));
                },
                child: Text(
                  'Confirm',
                  style:
                      TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(220, 20),
                    primary: primaryColor,
                    shape: StadiumBorder()),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
