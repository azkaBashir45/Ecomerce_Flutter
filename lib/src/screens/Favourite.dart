import 'package:flutter/material.dart';
import 'package:fryo/src/shared/Product.dart';
import 'package:fryo/src/shared/colors.dart';
import 'package:fryo/src/shared/styles.dart';

class Favourite extends StatefulWidget {
  // const Favourite({ Key? key }) : super(key: key);
  final Product productData;

  const Favourite({Key key, this.productData}) : super(key: key);
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
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
          title: Text('Favourite',
              style: logoWhiteStyle, textAlign: TextAlign.center),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              iconSize: 21,
              // icon: Icon(Fryo.alarm),
              icon: Icon(
                Icons.search,
                color: fontColor,
              ),
            ),
            IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              iconSize: 21,
              // icon: Icon(Fryo.alarm),
              icon: Icon(
                Icons.filter_alt,
                color: fontColor,
              ),
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(22),
              child: Row(
                children: [
                  Text(
                    'Favourites',
                    style: h5,
                  ),
                  SizedBox(
                    width: 95,
                  ),
                  Text(
                    '18 Products',
                    style: TextStyle(
                        color: grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 70),
              child: GridView.count(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 330 / 550,
                  children: <Widget>[
                    Card(
                      elevation: 2,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(22)),
                          borderSide: BorderSide(color: Colors.white)),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/shoe3.jpg',
                            width: 360,
                            height: 200,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            height: 5,
                            width: 10,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Shoes',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: grey),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                '234.00',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 2,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(22)),
                          borderSide: BorderSide(color: Colors.white)),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/bag.jpg',
                            width: 360,
                            height: 200,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            height: 5,
                            width: 10,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Bag',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: grey),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                '234.00',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 2,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(22)),
                          borderSide: BorderSide(color: Colors.white)),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/Kurta.jpg',
                            width: 360,
                            height: 200,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            height: 5,
                            width: 10,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Kurta',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: grey),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                '234.00',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 2,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(22)),
                          borderSide: BorderSide(color: Colors.white)),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/kurtal.jpg',
                            width: 360,
                            height: 200,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            height: 5,
                            width: 10,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Kurta',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: grey),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                '234.00',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ],
        ));
  }
}
