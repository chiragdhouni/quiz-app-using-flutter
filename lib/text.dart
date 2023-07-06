import 'package:flutter/material.dart';

Widget normal_text({
  String? text,
  double?size,
  Color?color
}){
  return 
  Text(text!,style: TextStyle(fontSize: size,color: color,fontFamily: "Flutter"));
}

Widget headingText( {
  String? text,
  Color? color,
  double? size,
}) {
  return Text(
    text!,
    style: TextStyle(
      fontFamily: "quick_bold",
      fontSize: size,
      color: color,
    ),
  );
}