import 'package:flutter/material.dart';
import 'package:fryo/src/shared/colors.dart';

class SingleDileveryItem extends StatelessWidget {
  final String title;
  final String address;
  final String number;
  final String addressType;
  SingleDileveryItem(this.title, this.address, this.number, this.addressType);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
              ),
              Container(
                width: 60,
                padding: EdgeInsets.all(1),
                height: 20,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    addressType,
                    style: TextStyle(fontSize: 16, color: whiteColor),
                  ),
                ),
              ),
            ],
          ),
          leading: CircleAvatar(
            backgroundColor: primaryColor,
            radius: 8,
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(address),
              SizedBox(
                height: 5,
              ),
              Divider(
                height: 35,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
