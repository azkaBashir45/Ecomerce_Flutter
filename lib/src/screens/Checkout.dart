import 'package:flutter/material.dart';
import 'package:fryo/src/shared/Product.dart';
import 'package:fryo/src/shared/colors.dart';
import 'Payment.dart';
import 'package:fryo/src/shared/inputFields.dart';
import 'package:fryo/src/shared/styles.dart';

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
            child: ListView.builder(
                itemCount: productData.length,
                itemBuilder: (context, index) {
                  return Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    elevation: 1,
                    color: whiteColor,
                    child: ListTile(
                      onTap: () {},
                      title: Text(
                        productData[index].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      subtitle: Text(
                        productData[index].price,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: primaryColor),
                      ),
                      leading: Image.asset(
                        productData[index].image,
                      ),
                      trailing: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor,
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.remove,
                                size: 14,
                                color: whiteColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text('1'),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor,
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.add,
                                color: whiteColor,
                                size: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
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
                padding: const EdgeInsets.all(8.0),
                child: fryoEmailInput('Card Holder Name'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: fryoEmailInput('Card Number'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: fryoEmailInput2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: fryoEmailInput3222,
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
