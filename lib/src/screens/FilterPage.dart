import 'package:flutter/material.dart';
import 'package:fryo/src/shared/colors.dart';
import 'package:fryo/src/shared/styles.dart';

class FilterPage extends StatefulWidget {
  const FilterPage();
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  static double _lowerValue = 5.0;
  static double _upperValue = 5000.0;
  RangeValues values = RangeValues(_lowerValue, _upperValue);
  @override
  Widget build(BuildContext context) {
    String valueChose;
    List listItem = ['item1', 'item2'];
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
        title:
            Text('Filter', style: logoWhiteStyle, textAlign: TextAlign.center),
      ),
      body: Stack(
        children: [
          headind('Filter category by', 28, 20),
          headind('Price Range', 18, 80),
          Container(
            margin: EdgeInsets.only(bottom: 380),
            child: RangeSlider(
                values: values,
                activeColor: primaryColor,
                inactiveColor: Colors.grey[200],
                max: _upperValue,
                min: _lowerValue,
                labels:
                    RangeLabels(values.start.toString(), values.end.toString()),
                onChanged: (val) {
                  setState(() {
                    values = val;
                  });
                }),
          ),
          headind('Sizes', 18, 190),
          Container(
            margin: EdgeInsets.only(top: 220, left: 20),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 55,
                  padding: EdgeInsets.only(top: 3, left: 23),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    border: Border.all(
                      color: primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'S',
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
                  padding: EdgeInsets.only(top: 3, left: 20),
                  decoration: BoxDecoration(
                    // color: Colors.grey[600],
                    border: Border.all(
                      color: primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Expanded(
                    child: Text(
                      'M',
                      style: TextStyle(
                        color: primaryColor,
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
                  padding: EdgeInsets.only(top: 3, left: 23),
                  decoration: BoxDecoration(
                    // color: Colors.grey[600],
                    border: Border.all(
                      color: primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Expanded(
                    child: Text(
                      'L',
                      style: TextStyle(
                        color: primaryColor,
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
                  padding: EdgeInsets.only(top: 3, left: 18),
                  decoration: BoxDecoration(
                    // color: Colors.grey[600],
                    border: Border.all(
                      color: primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Expanded(
                    child: Text(
                      'XL',
                      style: TextStyle(
                        color: primaryColor,
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
                  padding: EdgeInsets.only(top: 3, left: 20),
                  decoration: BoxDecoration(
                    // color: Colors.grey[600],
                    border: Border.all(
                      color: primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Expanded(
                    child: Text(
                      'X',
                      style: TextStyle(
                        color: primaryColor,
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
          headind('Colors', 18, 280),
          Container(
            margin: EdgeInsets.only(top: 315, left: 20),
            child: Row(
              children: [
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
                  backgroundColor: Colors.lightGreen,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.red,
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
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.green,
                ),
              ],
            ),
          ),
          Container(
            width: 360,
            margin: EdgeInsets.only(top: 390, left: 20, right: 20),
            padding: EdgeInsets.only(left: 20, right: 10),
            decoration: BoxDecoration(
                border: Border.all(color: grey, width: 1),
                borderRadius: BorderRadius.circular(22)),
            child: DropdownButton(
              icon: Icon(Icons.arrow_drop_down, color: Colors.black),
              iconSize: 34,
              underline: SizedBox(),
              style: TextStyle(color: Colors.black, fontSize: 18),
              isExpanded: true,
              hint: Text('On Sale'),
              dropdownColor: whiteColor,
              value: valueChose,
              onChanged: (newValue) {
                setState(() {
                  valueChose = newValue;
                });
              },
              items: listItem.map((valueItem) {
                return DropdownMenuItem(
                    child: Text(valueItem), value: valueItem);
              }).toList(),
            ),
          ),
          Container(
            width: 360,
            margin: EdgeInsets.only(top: 470, left: 20, right: 20),
            padding: EdgeInsets.only(left: 20, right: 10),
            decoration: BoxDecoration(
                border: Border.all(color: grey, width: 1),
                borderRadius: BorderRadius.circular(22)),
            child: DropdownButton(
              icon: Icon(Icons.arrow_drop_down, color: Colors.black),
              iconSize: 34,
              underline: SizedBox(),
              style: TextStyle(color: Colors.black, fontSize: 18),
              isExpanded: true,
              hint: Text('Brands'),
              dropdownColor: whiteColor,
              value: valueChose,
              onChanged: (newValue) {
                setState(() {
                  valueChose = newValue;
                });
              },
              items: listItem.map((valueItem) {
                return DropdownMenuItem(
                    child: Text(valueItem), value: valueItem);
              }).toList(),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 580, left: 20),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Close',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(150, 20),
                        primary: Color(0xffE8E8E8),
                        shape: StadiumBorder()),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Apply',
                      style: TextStyle(
                          color: whiteColor, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(150, 20),
                        primary: primaryColor,
                        shape: StadiumBorder()),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Container headind(String name, double size, double topMargin) {
    return Container(
      margin: EdgeInsets.only(top: topMargin, left: 20),
      child: Text(
        name,
        style: TextStyle(
          fontSize: size,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
