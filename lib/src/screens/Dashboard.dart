import 'package:flutter/material.dart';
import 'package:fryo/src/screens/FilterPage.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/fryo_icons.dart';
import './ProductPage.dart';
import '../shared/Product.dart';
import '../shared/partials.dart';
import 'MyCart.dart';
import 'Favourite.dart';
import 'Profile.dart';

class Dashboard extends StatefulWidget {
  final String pageTitle;

  Dashboard({Key key, this.pageTitle}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  bool isBootomNavigationBar = true;

  @override
  Widget build(BuildContext context) {
    final _tabs = [
      storeTab(context),
      // MyCart(),
      // Text('Tab3'),
      // Text('Tab4'),
      Text('Tab5'),
    ];

    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              iconSize: 21,
              icon: Icon(
                Icons.filter_drama,
                color: fontColor,
              )),
          backgroundColor: whiteColor,
          title:
              Text('Pasha', style: logoWhiteStyle, textAlign: TextAlign.center),
          actions: <Widget>[
            // IconButton(
            //   padding: EdgeInsets.all(0),
            //   onPressed: () {},
            //   iconSize: 21,
            //   // icon: Icon(Fryo.magnifier),
            //   icon: Icon(
            //     Icons.search,
            //     color: fontColor,
            //   ),
            // ),
            // IconButton(
            //   padding: EdgeInsets.all(0),
            //   onPressed: () {
            //     Navigator.of(context).push(
            //         MaterialPageRoute(builder: (context) => FilterPage()));
            //   },
            //   iconSize: 21,
            //   // icon: Icon(Fryo.alarm),
            //   icon: Icon(
            //     // Icons.notification_important_outlined,
            //     Icons.sort,
            //     color: fontColor,
            //   ),
            // )
          ],
        ),
        body: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Expanded(child: _tabs[_selectedIndex]),
                  ],
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0.0, 1.00), //(x,y)
                          blurRadius: 4.00,
                          color: Colors.grey,
                          spreadRadius: 1.00),
                    ],
                  ),
                  height: 80,
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0)),
                    child: Container(
                        child: BottomNavigationBar(
                      backgroundColor: whiteColor,
                      items: <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                            icon: Icon(Icons.shopping_basket),
                            title: Text(
                              'Store',
                              style: tabLinkStyle,
                            )),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.card_travel_rounded),
                            title: Text(
                              'My Cart',
                              style: tabLinkStyle,
                            )),
                        BottomNavigationBarItem(
                            icon: Icon(Fryo.heart_1),
                            title: Text(
                              'Favourites',
                              style: tabLinkStyle,
                            )),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.supervised_user_circle),
                            title: Text(
                              'Profile',
                              style: tabLinkStyle,
                            )),
                      ],
                      currentIndex: _selectedIndex,
                      type: BottomNavigationBarType.fixed,
                      fixedColor: fontColor,
                      onTap: _onItemTapped,
                    )),
                  ))
            ],
          ),
        ));

    // bottomNavigationBar: Container(
    //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
    //   height: 70,
    //   child: BottomNavigationBar(
    //     items: <BottomNavigationBarItem>[
    //       BottomNavigationBarItem(
    //           icon: Icon(Icons.shopping_basket),
    //           title: Text(
    //             'Store',
    //             style: tabLinkStyle,
    //           )),
    //       BottomNavigationBarItem(
    //           icon: Icon(Icons.card_travel_rounded),
    //           title: Text(
    //             'My Cart',
    //             style: tabLinkStyle,
    //           )),
    //       BottomNavigationBarItem(
    //           icon: Icon(Fryo.heart_1),
    //           title: Text(
    //             'Favourites',
    //             style: tabLinkStyle,
    //           )),
    //       BottomNavigationBarItem(
    //           icon: Icon(Icons.supervised_user_circle),
    //           title: Text(
    //             'Profile',
    //             style: tabLinkStyle,
    //           )),
    //       BottomNavigationBarItem(
    //           icon: Icon(Fryo.cog_1),
    //           title: Text(
    //             'Settings',
    //             style: tabLinkStyle,
    //           ))
    //     ],
    //     currentIndex: _selectedIndex,
    //     type: BottomNavigationBarType.fixed,
    //     fixedColor: fontColor,
    //     onTap: _onItemTapped,
    //   ),
  }

  void _onItemTapped(int index) {
    if (index == 1) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => MyCart()),
      );
      // print(_selectedIndex);
    } else if (index == 2) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Favourite()),
      );

      // print(_selectedIndex);
    } else if (index == 3) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Profile()),
      );

      // print(_selectedIndex);
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  // setState(() {

  //   _selectedIndex = index;
  // });
}

Widget storeTab(BuildContext context) {
  // will pick it up from here
  // am to start another template
  List<Product> shoping = [
    Product(
        name: "Bag",
        image: "images/bag.jpg",
        price: "\$25.00",
        userLiked: true,
        discount: 10),
    Product(
        name: "Kurta",
        image: "images/Kurta.jpg",
        price: "\$150.00",
        userLiked: false,
        discount: 7.8),
    Product(
      name: "Necklece",
      image: 'images/neclece.jpg',
      price: '\$10.99',
      userLiked: false,
    ),
    Product(
        name: "KurtyPlazo",
        image: "images/kurtal.jpg",
        price: '\$50.00',
        userLiked: true,
        discount: 14)
  ];

  List<Product> drinks = [
    Product(
        name: "Sandle-Boy",
        image: "images/shoe6.jpg",
        price: "\$45.12",
        userLiked: true,
        discount: 2),
    Product(
        name: "Pearl Wedding",
        image: "images/shoe5.jpg",
        price: "\$28.00",
        userLiked: false,
        discount: 5.2),
    Product(
        name: "Athlic",
        image: "images/shoe2.jpg",
        price: "\$78.99",
        userLiked: false),
    Product(
        name: "High Heel",
        image: "images/shoe4.jpg",
        price: "\$168.99",
        userLiked: true,
        discount: 3.4)
  ];

  return ListView(children: <Widget>[
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
          width: 300,
          child: Container(
            margin: EdgeInsets.only(left: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(32)),
              child: ListTile(
                title: Text('Search'),
                leading: Icon(
                  Icons.search,
                  color: fontColor,
                ),
                // trailing: IconButton(
                //     onPressed: () {
                //       Navigator.of(context).push(
                //           MaterialPageRoute(builder: (context) => FilterPage()));
                //     },
                //     icon: Icon(
                //       Icons.sort,
                //       color: fontColor,
                //     ),
                //     ),
              ),
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: primaryColor,
          child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FilterPage()));
              },
              icon: Icon(
                Icons.sort,
                color: whiteColor,
              )),
        )
      ],
    ),
    headerTopCategories(),
    deals('Hot Deals', onViewMore: () {}, items: <Widget>[
      foodItem(shoping[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: shoping[0],
              );
            },
          ),
        );
      }, onLike: () {}),
      foodItem(shoping[1], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: shoping[1],
              );
            },
          ),
        );
      }, imgWidth: 250, onLike: () {}),
      foodItem(shoping[2], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: shoping[2],
              );
            },
          ),
        );
      }, imgWidth: 200, onLike: () {}),
      foodItem(shoping[3], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: shoping[3],
              );
            },
          ),
        );
      }, onLike: () {}),
    ]),
    SizedBox(height: 18),
    deals('Shoes Pasha', onViewMore: () {}, items: <Widget>[
      foodItem(drinks[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: drinks[0],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 60),
      foodItem(drinks[1], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: drinks[1],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 75),
      foodItem(drinks[2], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: drinks[2],
              );
            },
          ),
        );
      }, imgWidth: 110, onLike: () {}),
      foodItem(drinks[3], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: drinks[3],
              );
            },
          ),
        );
      }, onLike: () {}),
    ])
  ]);
}

Widget sectionHeader(String headerTitle, {onViewMore}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 15, top: 10),
        child: Text(headerTitle, style: h4),
      ),
      Container(
        margin: EdgeInsets.only(left: 15, top: 2),
        child: FlatButton(
          onPressed: onViewMore,
          child: Text('View all ›', style: contrastText),
        ),
      )
    ],
  );
}

// wrap the horizontal listview inside a sizedBox..
Widget headerTopCategories() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      SizedBox(
        height: 15,
      ),
      sectionHeader('All Categories', onViewMore: () {}),
      SizedBox(
        height: 130,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            headerCategoryItem('Bag', Icons.shopping_bag, onPressed: () {}),
            headerCategoryItem('Clothes', Icons.collections_sharp,
                onPressed: () {}),
            headerCategoryItem('Jewlery', Icons.history_edu, onPressed: () {}),
            headerCategoryItem('Sport', Icons.rowing, onPressed: () {}),
            headerCategoryItem('Shoe', Icons.shop_2_sharp, onPressed: () {}),
          ],
        ),
      )
    ],
  );
}

Widget headerCategoryItem(String name, IconData icon, {onPressed}) {
  return Container(
    margin: EdgeInsets.only(left: 15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(bottom: 10),
            width: 58,
            height: 58,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: FloatingActionButton(
              heroTag: name,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0))),
              onPressed: onPressed,
              backgroundColor: whiteColor,
              //Colors.black87
              child: Icon(icon, size: 22, color: primaryColor),
            )),
        Text(name + ' ›', style: categoryText)
      ],
    ),
  );
}

Widget deals(String dealTitle, {onViewMore, List<Widget> items}) {
  return Container(
    margin: EdgeInsets.only(top: 5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        sectionHeader(dealTitle, onViewMore: onViewMore),
        SizedBox(
          height: 290,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: (items != null)
                ? items
                : <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text('No items available at this moment.',
                          style: taglineText),
                    )
                  ],
          ),
        )
      ],
    ),
  );
}
