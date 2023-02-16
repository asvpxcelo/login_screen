import 'package:flutter/material.dart';


class MyTextFieldComponent extends StatelessWidget {

  final controller;
  final String hintText;
  final bool obscureText;
  final num opacity;

  const MyTextFieldComponent({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.opacity
  });


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Center(
      child: TextField(
      decoration: InputDecoration(
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(15)),
          focusedBorder:  const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black)),
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.black),
      ),
    ),)
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
Color color1 = HexColor("#F8F7FA");
Color colorInput = HexColor('#A3BB98');
Color color2 = HexColor("#b74093");
Color color3 = HexColor("#88b74093");