import 'package:flutter/material.dart';
import './colors.dart';
import './styles.dart';

Container fryoTextInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: EdgeInsets.only(top: 13),
    child: Material(
      elevation: 1.5,
      shadowColor: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: TextField(
        onTap: onTap,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        onSubmitted: onSubmitted,
        cursorColor: primaryColor,
        style: inputFieldTextStyle,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputFieldHintTextStyle,
          // focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: whiteColor),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: whiteColor,
            ),
          ),
          // border: inputFieldDefaultBorderStyle
        ),
      ),
    ),
  );
}

Container fryoEmailInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: EdgeInsets.only(top: 13),
    child: Material(
      child: Material(
        elevation: 1.5,
        shadowColor: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: TextField(
          onTap: onTap,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onSubmitted: onSubmitted,
          keyboardType: TextInputType.emailAddress,
          cursorColor: primaryColor,
          style: inputFieldTextStyle,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: inputFieldHintTextStyle,
            // focusedBorder: inputFieldFocusedBorderStyle,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: whiteColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: whiteColor,
              ),
            ),

            // border: inputFieldDefaultBorderStyle
          ),
        ),
      ),
    ),
  );
}

Container fryCheckoutInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted, IconData icon}) {
  return Container(
    height: 60,
    margin: EdgeInsets.only(top: 13),
    child: Material(
      child: Material(
        // elevation: 0.6,
        color: Colors.grey[100],
        shadowColor: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Center(
          child: TextField(
            onTap: onTap,
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            onSubmitted: onSubmitted,
            keyboardType: TextInputType.emailAddress,
            cursorColor: primaryColor,
            style: inputFieldTextStyle,
            decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                size: 22,
                color: Color(0xffc0c0c0),
              ),
              hintText: hintText,

              hintStyle: inputFieldHintsTextStyle,
              // focusedBorder: inputFieldFocusedBorderStyle,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[100]),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: whiteColor,
                ),
              ),

              // border: inputFieldDefaultBorderStyle
            ),
          ),
        ),
      ),
    ),
  );
}

Container fryoPasswordInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
      margin: EdgeInsets.only(top: 13),
      child: Material(
        elevation: 1.5,
        shadowColor: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: TextField(
          onTap: onTap,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onSubmitted: onSubmitted,
          obscureText: true,
          cursorColor: primaryColor,
          style: inputFieldHintPaswordTextStyle,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: inputFieldHintPaswordTextStyle,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: whiteColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: whiteColor),
            ),

            // focusedBorder: inputFieldFocusedBorderStyle,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // border: inputFieldDefaultBorderStyle
            // ),
          ),
        ),
      ));
}
