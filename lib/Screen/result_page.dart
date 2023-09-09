
import 'package:bmi_calculator/Components/bottom_button.dart';
import 'package:bmi_calculator/Screen/input_page.dart';

import 'package:flutter/material.dart';

import '../Components/Constant.dart';
import '../Components/reusable_widget.dart';

class ResultPage extends StatelessWidget {


  final String? BmiResult;
  final String? ResultText;
  final String? Interpetation;

  ResultPage({this.BmiResult,this.ResultText,this.Interpetation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi calculator"),
      ),
      body:Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Expanded(

                child:Container(
                  padding: EdgeInsets.all(15),

                  alignment: Alignment.bottomLeft,
                  child: Text("Your Result",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),),
                )
            ),
            Expanded(
                flex: 5,
                child: ReusableWidget(
                colour: kWidgetcolor,
                  Widgetchild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Text(ResultText!.toUpperCase(),
                        style: kNormaltext,
                      ),
                      
                      Text(BmiResult!,
                      style: KbmiNumber,
                      ),
                      
                      Text(Interpetation!,
                      textAlign: TextAlign.center,
                      style: kBmiMessage,
                      )
                      
                    ],


                  ),

              )),
            BottomButton(
              ButtonTitle: "RE CALCULATE",
              ontap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
