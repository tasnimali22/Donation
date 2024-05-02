import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomDonate extends StatelessWidget {
  CustomDonate({super.key,required this.image});
  String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    child: Container(
    width: 300,
decoration: BoxDecoration(
border: Border.all(color: Color(0xFFb0e7b0)),
),
child:Image.network(image.toString(), fit: BoxFit.cover,),

),
);
  }
}
