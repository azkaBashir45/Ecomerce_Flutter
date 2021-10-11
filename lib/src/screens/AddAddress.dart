import 'package:flutter/material.dart';
import 'package:fryo/src/shared/colors.dart';
import 'package:fryo/src/shared/inputFields.dart';
import 'package:fryo/src/shared/styles.dart';

class AddAddress extends StatefulWidget {
  const AddAddress();
  @override
  _AddAddressState createState() => _AddAddressState();
}

enum AddressTypes {
  Home,
  Work,
  Other,
}

class _AddAddressState extends State<AddAddress> {
  var myType = AddressTypes.Home;
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
        title: Text('Add Address',
            style: logoWhiteStyle, textAlign: TextAlign.center),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: fryoTextInput('First name'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0, left: 20, right: 20),
                child: fryoTextInput('Last name'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 110.0, left: 20, right: 20),
                child: fryoTextInput('Mobile nO'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 162.0, left: 20, right: 20),
                child: fryoTextInput('Alternate mobile no'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 214.0, left: 20, right: 20),
                child: fryoTextInput('House no'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 265.0, left: 20, right: 20),
                child: fryoTextInput('Street no'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 315.0, left: 20, right: 20),
                child: fryoTextInput('City'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 325.0, left: 20, right: 20),
                child: fryoTextInput('Area'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 365.0, left: 20, right: 20),
                child: fryoTextInput('Pincode'),
              ),
              Container(
                margin: EdgeInsets.only(top: 420, left: 20, right: 20),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 47,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Set Location')],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 450, left: 20, right: 20),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 460, left: 20, right: 20),
                child: ListTile(
                  title: Text('Address Type*'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 490, left: 20, right: 20),
                child: RadioListTile(
                    value: AddressTypes.Home,
                    groupValue: AddressTypes,
                    title: Text('Home'),
                    secondary: Icon(
                      Icons.home,
                      color: primaryColor,
                    ),
                    onChanged: (value) {
                      setState(() {
                        myType = value;
                      });
                    }),
              ),
              Container(
                margin: EdgeInsets.only(top: 520, left: 20, right: 20),
                child: RadioListTile(
                    value: AddressTypes.Work,
                    groupValue: AddressTypes,
                    title: Text('Work'),
                    secondary: Icon(
                      Icons.work,
                      color: primaryColor,
                    ),
                    onChanged: (value) {
                      setState(() {
                        myType = value;
                      });
                    }),
              ),
              Container(
                margin: EdgeInsets.only(top: 550, left: 20, right: 20),
                child: RadioListTile(
                    value: AddressTypes.Other,
                    groupValue: AddressTypes,
                    title: Text('Others'),
                    secondary: Icon(
                      Icons.other_houses,
                      color: primaryColor,
                    ),
                    onChanged: (value) {
                      setState(() {
                        myType = value;
                      });
                    }),
              ),
              Container(
                margin: EdgeInsets.only(top: 599, left: 70, right: 20),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => ()));
                  },
                  child: Text(
                    'Add Address',
                    style: TextStyle(
                        color: whiteColor, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(220, 20),
                      primary: primaryColor,
                      shape: StadiumBorder()),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
