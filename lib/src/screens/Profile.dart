import 'package:flutter/material.dart';
import 'package:fryo/src/screens/SignInPage.dart';
import 'package:fryo/src/shared/colors.dart';
import 'package:fryo/src/shared/styles.dart';

import 'DeliveryDetil.dart';

class Profile extends StatefulWidget {
  // const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
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
            Text('Profile', style: logoWhiteStyle, textAlign: TextAlign.center),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            iconSize: 21,
            // icon: Icon(Fryo.alarm),
            icon: Icon(
              Icons.linear_scale,
              color: fontColor,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 25),
              color: bgColor,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW6X2lldt_gy2tcbXCKBbKWNVBpH-f1Mcjsw&usqp=CAU'),
                  ),
                  Text('Usama', style: h5),
                  Text(
                    'usama@gmail.com',
                    style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Divider(
                      thickness: 1.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          //setting
          Container(
            margin: EdgeInsets.only(
              top: 240,
            ),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(22))),
            child: Column(
              children: [
                Container(
                  child: Card(
                    elevation: 0,
                    margin: EdgeInsets.only(top: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignInPage()));
                      },
                      child: ListTile(
                        title: Text(
                          'My Account',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        leading: Icon(
                          Icons.account_box,
                          color: fontColor,
                        ),
                        trailing: Icon(
                          Icons.navigate_next,
                          color: fontColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  // margin: EdgeInsets.only(top: 5),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DileveryDetail()));
                    },
                    child: ListTile(
                      title: Text(
                        'Address',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      leading: Icon(
                        Icons.location_on,
                        color: fontColor,
                      ),
                      trailing: Icon(
                        Icons.navigate_next,
                        color: fontColor,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  // margin: EdgeInsets.only(top: 30),
                  child: ListTile(
                    title: Text(
                      'Notification',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    leading: Icon(
                      Icons.notification_add,
                      color: fontColor,
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: fontColor,
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  // margin: EdgeInsets.only(top: 30),
                  child: ListTile(
                    title: Text(
                      'Orders',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    leading: Icon(
                      Icons.location_city,
                      color: fontColor,
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: fontColor,
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  // margin: EdgeInsets.only(top: 30),
                  child: ListTile(
                    title: Text(
                      'Share App',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    leading: Icon(
                      Icons.share,
                      color: fontColor,
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: fontColor,
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  // margin: EdgeInsets.only(top: 30),
                  child: ListTile(
                    title: Text(
                      'Log Out',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    leading: Icon(
                      Icons.logout,
                      color: fontColor,
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: fontColor,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
