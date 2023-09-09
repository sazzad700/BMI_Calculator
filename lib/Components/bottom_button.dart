
import 'package:flutter/material.dart';

import 'Constant.dart';



class BottomButton extends StatelessWidget {

  final String? ButtonTitle;
  final Function()? ontap;

  BottomButton({this.ButtonTitle,this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color:BottomContainercolor ,
        height: kBottomConatinerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),

        child: Center(
          child: Text(ButtonTitle!,
            style: kLargeButtStyle,
          ),
        ),
      ),
    );
  }
}