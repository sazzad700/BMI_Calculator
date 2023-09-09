

import 'package:flutter/material.dart';

import 'Constant.dart';





class ColumnWidget extends StatelessWidget {

  final IconData? icon;
  final String? tex;

  ColumnWidget({this.icon,this.tex});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(tex!,
          style:klabelTextstyle ,
        )
      ],
    );
  }
}