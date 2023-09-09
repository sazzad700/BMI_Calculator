
import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {

  final Color? colour;
  final Widget? Widgetchild;

  final Function()? onpress;

  const ReusableWidget({required this.colour,this.Widgetchild, this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress ,
      child: Container(
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),

        ),
        margin: EdgeInsets.all(15),

        child: Widgetchild,


      ),
    );
  }
}