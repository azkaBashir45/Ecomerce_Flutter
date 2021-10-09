import 'package:flutter/material.dart';
import '../shared/Product.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/partials.dart';
import '../shared/buttons.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProductPage extends StatefulWidget {
  final String pageTitle;
  final Product productData;

  ProductPage({Key key, this.pageTitle, this.productData}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  double _rating = 4;
  int _quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        centerTitle: true,
        leading: BackButton(
          color: fontColor,
        ),
        title: Text(widget.productData.name, style: h4),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            iconSize: 21,
            // icon: Icon(Fryo.magnifier),
            icon: Icon(
              Icons.favorite_border,
              color: fontColor,
            ),
          ),
        ],
      ),

      //upper
      body: ListView(
        children: <Widget>[
          Container(
            // child: Center(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 360,
                  height: 310,
                  color: whiteColor,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 22,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 5, left: 10, right: 10, bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                            '-' + widget.productData.discount.toString() + '%',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700)),
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 200,
                            height: 160,
                            child: Container(
                              padding: EdgeInsets.all(100),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage(widget.productData.image)),
                                  color: whiteColor),
                            ),
                          )),
                    ],
                  ),
                ),

                //Lower
                Container(
                  margin: EdgeInsets.only(top: 310),
                  height: 280,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32))),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20),
                        //Rating
                        child: Row(
                          children: <Widget>[
                            Text(
                              widget.productData.name,
                              style: h5,
                            ),
                            SizedBox(
                              width: 102,
                            ),
                            Container(
                              width: 150,
                              margin: EdgeInsets.only(right: 10),
                              // color: Colors.black,
                              child: SmoothStarRating(
                                allowHalfRating: false,
                                onRatingChanged: (v) {
                                  setState(() {
                                    _rating = v;
                                  });
                                },
                                starCount: 5,
                                rating: _rating,
                                size: 27.0,
                                color: Colors.orange,
                                borderColor: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //size
                      Padding(
                        padding:
                            EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Size:',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 30,
                              width: 55,
                              padding: EdgeInsets.only(top: 3, left: 11),
                              decoration: BoxDecoration(
                                color: Colors.grey[600],
                                border: Border.all(
                                  color: Colors.grey[600],
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Expanded(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'US 6',
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 11,
                            ),
                            Container(
                              height: 30,
                              width: 55,
                              padding: EdgeInsets.only(top: 3, left: 11),
                              decoration: BoxDecoration(
                                // color: Colors.grey[600],
                                border: Border.all(
                                  color: Colors.grey[600],
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Expanded(
                                child: Text(
                                  'US 7',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 11,
                            ),
                            Container(
                              height: 30,
                              width: 55,
                              padding: EdgeInsets.only(top: 3, left: 11),
                              decoration: BoxDecoration(
                                // color: Colors.grey[600],
                                border: Border.all(
                                  color: Colors.grey[600],
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Expanded(
                                child: Text(
                                  'US 8',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 11,
                            ),
                            Container(
                              height: 30,
                              width: 55,
                              padding: EdgeInsets.only(top: 3, left: 11),
                              decoration: BoxDecoration(
                                // color: Colors.grey[600],
                                border: Border.all(
                                  color: Colors.grey[600],
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Expanded(
                                child: Text(
                                  'US 9',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //color

                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Text(
                              'Available Color:',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.orange,
                              radius: 16,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.yellow,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.pink,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //button
                Container(
                  margin: EdgeInsets.only(top: 601),
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
                        widget.productData.price,
                        style: h5,
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Add To Cart',
                          style: TextStyle(
                              color: darkblueColor,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(120, 20),
                            primary: Color(0xffE8E8E8),
                            shape: StadiumBorder()),
                      ),
                    ],
                  ),
                ),

                //button
                Container(
                  margin: EdgeInsets.only(top: 567),
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
                        widget.productData.price,
                        style: h5,
                      ),
                      SizedBox(
                        width: 130,
                      ),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Add To Cart',
                          style: TextStyle(
                              color: darkblueColor,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(120, 20),
                            primary: Color(0xffE8E8E8),
                            shape: StadiumBorder()),
                      ),

                      // ButtonTheme(
                      //   padding: EdgeInsets.all(10),
                      //   minWidth: 121.0,
                      //   height: 150.0,
                      //   child: FlatButton(
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius:
                      //             BorderRadius.circular(12), // <-- Radius
                      //       ),
                      //       color: Colors.orange,
                      //       onPressed: () {},
                      //       padding: EdgeInsets.all(4),
                      //       child: Text('Add To Cart')),
                      // )
                    ],
                  ),
                ),
                // Align(
                //   alignment: Alignment.center,
                //   child:

                // Container(
                //   margin: EdgeInsets.only(top: 310, bottom: 100),
                // padding: EdgeInsets.only(top: 100, bottom: 50),
                // width: 360,
                // MediaQuery.of(context).size.width * 0.99,
                // child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                // children: <Widget>[
                // child: Text(widget.productData.name, style: h5),
                // Text(widget.productData.price, style: h3),
                // Container(
                //   margin: EdgeInsets.only(top: 5, bottom: 20),
                //   child: SmoothStarRating(
                //     allowHalfRating: false,
                //     onRatingChanged: (v) {
                //       setState(() {
                //         _rating = v;
                //       });
                //     },
                //     starCount: 5,
                //     rating: _rating,
                //     size: 27.0,
                //     color: Color(0xff5D3FD3),
                //     borderColor: Colors.orange,
                //   ),
                // ),

                // Container(
                //   margin: EdgeInsets.only(top: 10, bottom: 25),
                //   child: Column(
                //     children: <Widget>[
                // Container(
                //   child: Text('Quantity', style: h6),
                //   margin: EdgeInsets.only(bottom: 15),
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: <Widget>[
                //     Container(
                //       width: 55,
                //       height: 55,
                //       child: OutlineButton(
                //         onPressed: () {
                //           setState(() {
                //             _quantity += 1;
                //           });
                //         },
                //         child: Icon(Icons.add),
                //       ),
                //     ),
                //     Container(
                //       margin: EdgeInsets.only(left: 20, right: 20),
                //       child: Text(_quantity.toString(), style: h3),
                //     ),
                //     Container(
                //       width: 55,
                //       height: 55,
                //       child: OutlineButton(
                //         onPressed: () {
                //           setState(() {
                //             if (_quantity == 1) return;
                //             _quantity -= 1;
                //           });
                //         },
                //         child: Icon(Icons.remove),
                //       ),
                //     )
                //   ],
                // )
                // ],
                // ),
                // ),
                //       Container(
                //         width: 180,
                //         child: froyoOutlineBtn('Buy Now', () {}),
                //       ),
                //       Container(
                //         width: 180,
                //         child: froyoFlatBtn('Add to Cart', () {}),
                //       )
                //     ],
                //   ),
                //   decoration: BoxDecoration(
                //       color: Color(0xffD8D8D8),
                //       borderRadius: BorderRadius.circular(10),
                //       boxShadow: [
                //         BoxShadow(
                //             blurRadius: 15,
                //             spreadRadius: 5,
                //             color: Color.fromRGBO(0, 0, 0, .05))
                //       ]),
                // ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );

    // );
    // )
    //     ],
    //   ),
    // );
  }
}
