import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
          title: Text("MyChattingApp"),
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.black),
      focusedBorder:
      UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      enabledBorder:
      UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)));
}

TextStyle simpleTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 16);
}

TextStyle mediumTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 17);
}