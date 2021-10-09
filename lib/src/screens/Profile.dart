import 'package:flutter/material.dart';
import 'package:fryo/src/shared/colors.dart';
import 'package:fryo/src/shared/styles.dart';

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
              margin: EdgeInsets.only(top: 50),
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
                    margin: EdgeInsets.only(top: 20),
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
              top: 290,
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
                    child: ListTile(
                      title: Text(
                        'Setting',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      leading: Icon(
                        Icons.settings,
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
                  // margin: EdgeInsets.only(top: 5),
                  child: ListTile(
                    title: Text(
                      'Order History',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    leading: Icon(
                      Icons.call_to_action,
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
                      'Cards',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    leading: Icon(
                      Icons.credit_card,
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
                      'Shopping Address',
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
