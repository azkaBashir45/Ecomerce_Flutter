import 'package:flutter/material.dart';
import 'package:fryo/src/shared/Single_Delivery_item.dart';
import 'package:fryo/src/shared/colors.dart';
import 'package:fryo/src/shared/styles.dart';

class DileveryDetail extends StatelessWidget {
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
        title: Text('DileveryDetail',
            style: logoWhiteStyle, textAlign: TextAlign.center),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(('Dilevery To')),
            leading: Icon(Icons.location_on),
          ),
          Divider(
            height: 1,
          ),
          Column(
            children: [
              SingleDileveryItem("Usama", "H#6 street #6 Rustam Park,Lahore",
                  "+923456777", "Home")
            ],
          )
        ],
      ),
    );
  }
}
