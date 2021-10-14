// import 'dart:html';

// import 'dart:ffi';
import 'package:fryo/src/screens/Checkout.dart';
import 'package:flutter/material.dart';
import 'package:fryo/src/shared/Product.dart';
import 'package:fryo/src/shared/colors.dart';
import 'package:fryo/src/shared/styles.dart';
import 'package:fryo/src/shared/partials.dart';

class MyCart extends StatefulWidget {
  // const MyCart({ Key? key }) : super(key: key);

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<Product> productData = [
    Product(image: 'images/bag.jpg', name: 'Bag', price: '200.00'),
    Product(image: 'images/bag.jpg', name: 'Bag', price: '200.00'),
    Product(image: 'images/bag.jpg', name: 'Bag', price: '200.00'),
    Product(image: 'images/bag.jpg', name: 'Bag', price: '200.00'),
    Product(image: 'images/bag.jpg', name: 'Bag', price: '200.00'),
    Product(image: 'images/bag.jpg', name: 'Bag', price: '200.00'),
    Product(image: 'images/bag.jpg', name: 'Bag', price: '200.00'),
    Product(image: 'images/bag.jpg', name: 'Bag', price: '200.00'),
    Product(image: 'images/bag.jpg', name: 'Bag', price: '200.00'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            iconSize: 21,
            icon: Icon(
              Icons.arrow_back,
              color: fontColor,
            )),
        backgroundColor: whiteColor,
        title:
            Text('My Cart', style: logoWhiteStyle, textAlign: TextAlign.center),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            iconSize: 21,
            // icon: Icon(Fryo.alarm),
            icon: Icon(
              Icons.delete,
              color: fontColor,
            ),
          )
        ],
      ),
      body: Stack(children: [
        Container(
          height: 720,
          width: 360,
          decoration: BoxDecoration(
            color: Colors.grey[100],
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
          margin: EdgeInsets.only(top: 525),
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text(
                'Subtotal: ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    color: grey),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '123.00',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    color: Colors.black),
              ),
              SizedBox(
                width: 80,
              ),
              Text(
                'Taxes:',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    color: grey),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '40',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    color: Colors.black),
              ),
            ],
          ),
        ),
        // button
        Container(
          margin: EdgeInsets.only(top: 561),
          padding: EdgeInsets.all(20),
          height: 106,
          width: 360,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)),
          ),
          child: Row(
            children: <Widget>[
              Text(
                '129.00',
                style: h5,
              ),
              SizedBox(
                width: 130,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CheckOut()));
                },
                child: Text(
                  'Check Out',
                  style:
                      TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(120, 20),
                    primary: primaryColor,
                    shape: StadiumBorder()),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
