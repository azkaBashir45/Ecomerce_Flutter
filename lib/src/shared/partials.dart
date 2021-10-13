import 'package:flutter/material.dart';
import '../shared/Product.dart';
import '../shared/colors.dart';
import '../shared/styles.dart';

Widget foodItem(Product food,
    {double imgWidth, onLike, onTapped, bool isProductPage = false}) {
  return GestureDetector(
    onTap: onTapped,
    // color: white,
    // elevation: (isProductPage) ? 10 : 12,
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    child: Container(
      margin: EdgeInsets.only(left: 13),
      height: 350,
      width: 200,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(30),
      ),

      child: Column(
        children: [
          Card(
            elevation: 3,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22),
                borderSide: BorderSide(color: whiteColor)),
            color: whiteColor,
            child: Padding(
                padding: EdgeInsets.only(bottom: 22),
                child: Stack(
                  children: [
                    // RaisedButton(
                    //   onPressed: onTapped,
                    //   color: white,
                    //   // elevation: (isProductPage) ? 0 : 12,
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(5)),
                    // child: Hero(
                    //   transitionOnUserGestures: true,
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(left: 12, right: 10, top: 8),
                      // color: white,
                      child: Image.asset(
                        food.image,
                        width: 200,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 12, top: 175),
                      child: Flexible(
                        child: Container(
                          padding: new EdgeInsets.only(right: 13.0),
                          child: Text(
                            food.name,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: h5,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 12, top: 205),
                      child: Text(food.price, style: priceText),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 120, left: 120),
                      child: FlatButton(
                        padding: EdgeInsets.all(20),
                        shape: CircleBorder(),
                        onPressed: onLike,
                        child: Icon(
                          (food.userLiked)
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: (food.userLiked) ? primaryColor : darkText,
                          size: 30,
                        ),
                      ),
                    ),
                    (food.discount != null)
                        ? Container(
                            margin: EdgeInsets.only(left: 17, top: 10),
                            padding: EdgeInsets.only(
                                top: 5, left: 10, right: 10, bottom: 5),
                            decoration: BoxDecoration(
                                color: Colors.grey[600],
                                borderRadius: BorderRadius.circular(50)),
                            child: Text('-' + food.discount.toString() + '%',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700)),
                          )
                        : SizedBox(width: 0)
                  ],
                )),
          ),
        ],
      ),

      // child: Stack(
      //   children: <Widget>[
      //     Container(
      //       width: 180,
      //       height: 180,
      //       child: RaisedButton(
      //         color: white,
      //         elevation: (isProductPage) ? 20 : 12,
      //         shape:
      //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //         onPressed: onTapped,
      //         child: Hero(
      //           transitionOnUserGestures: true,
      //           tag: food.name,
      //           child: Image.asset(
      //             food.image,
      //             width: (imgWidth != null) ? imgWidth : 100,
      //             height: (imgWidth != null) ? imgWidth : 150,
      //           ),
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       bottom: (isProductPage) ? 10 : 70,
      //       right: 0,
      //       child: FlatButton(
      //         padding: EdgeInsets.all(20),
      //         shape: CircleBorder(),
      //         onPressed: onLike,
      //         child: Icon(
      //           (food.userLiked) ? Icons.favorite : Icons.favorite_border,
      //           color: (food.userLiked) ? primaryColor : darkText,
      //           size: 30,
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       bottom: 0,
      //       left: 0,
      //       child: (!isProductPage)
      //           ? Column(
      //               mainAxisAlignment: MainAxisAlignment.start,
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: <Widget>[
      //                 Text(food.name, style: foodNameText),
      //                 Text(food.price, style: priceText),
      //               ],
      //             )
      //           : Text(' '),
      //     ),
      //     Positioned(
      //         top: 10,
      //         left: 10,
      //         child: (food.discount != null)
      //             ? Container(
      //                 padding:
      //                     EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
      //                 decoration: BoxDecoration(
      //                     color: Colors.grey[600],
      //                     borderRadius: BorderRadius.circular(50)),
      //                 child: Text('-' + food.discount.toString() + '%',
      //                     style: TextStyle(
      //                         color: Colors.white, fontWeight: FontWeight.w700)),
      //               )
      //             : SizedBox(width: 0)
      // )
      //   ],
      // ),
    ),
  );
}
