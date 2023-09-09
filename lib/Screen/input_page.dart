

import 'package:bmi_calculator/Screen/calculator_brain.dart';
import 'package:bmi_calculator/Screen/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Components/Constant.dart';
import '../Components/bottom_button.dart';
import '../Components/column_widget.dart';
import '../Components/reusable_widget.dart';




enum Gender{
  Male,
  Female,
}

class Inputpage extends StatefulWidget {
  const Inputpage({super.key});

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {

  Gender? Selectedgender=Gender.Male;
  int Height=180;
  int Weight=60;
  int Age=10;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child:Row(
              children: [
                Expanded(child: ReusableWidget(
                  onpress: (){
                   setState(() {
                     Selectedgender=Gender.Male;
                   });
                  },
                  colour: Selectedgender==Gender.Male? kWidgetcolor:kInactiveColor,
                  Widgetchild: ColumnWidget(
                    icon: FontAwesomeIcons.mars,
                    tex: "MALE",
                  ),
                )),



                Expanded(child: ReusableWidget(
                  onpress: (){
                    setState(() {
                      Selectedgender=Gender.Female;
                    });
                  },

                  colour: Selectedgender==Gender.Female? kWidgetcolor:kInactiveColor,
                  Widgetchild: ColumnWidget(
                    icon: FontAwesomeIcons.venus,
                    tex: "FEMALE",
                  ),
                )),

              ],
              )
          ),

          Expanded(child: ReusableWidget(
              colour: kWidgetcolor,

            Widgetchild: Column(

              mainAxisAlignment: MainAxisAlignment.center,


              children: [

                Text("HEIGHT",
                style:klabelTextstyle ,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      Height.toString(),
                      style: kNumberStyle,
                    ),
                    Text("cm")
                  ],
                ),
                
                SliderTheme(
                  data: SliderThemeData(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 35),
                    thumbColor: Color(0xFFEB1555),
                    activeTrackColor: Colors.white,
                    overlayColor:  Color(0x1fEB1555),
                    inactiveTrackColor: Color(0xFF8D8E98),


                  ),
                  child: Slider(
                      value: Height.toDouble(),
                     min: 120,
                    max: 220,


                    onChanged: (double newValue){
                     setState(() {
                       Height=newValue.toInt();
                     });
                    },
                  ),
                )
                
              ],
            ),



          )),

          Expanded(child:Row(
            children: [
              Expanded(child: ReusableWidget(
                  colour: kWidgetcolor,
                Widgetchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("WEIGHT",
                    style: klabelTextstyle,
                    ),
                    Text(
                      Weight.toString(),
                      style: kNumberStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        RoundIconButton(
                          iconData: FontAwesomeIcons.minus,
                          onpress: (){
                            setState(() {
                              Weight>0?Weight--:null;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RoundIconButton(
                          iconData: FontAwesomeIcons.plus,
                          onpress: (){
                            setState(() {
                              Weight++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )),
              Expanded(child: ReusableWidget(
                  colour: kWidgetcolor,
                Widgetchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("AGE",style: klabelTextstyle,),
                    Text(Age.toString(),style: kNumberStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        RoundIconButton(
                          iconData: FontAwesomeIcons.minus,
                          onpress: (){
                            setState(() {
                              Age>0?Age--:null;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RoundIconButton(
                          iconData: FontAwesomeIcons.plus,
                          onpress: (){
                            setState(() {
                              Age++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )),

            ],
          )),

          BottomButton(
            ButtonTitle: "CALCULATE",
            ontap: (){
             CalculatorBrain clc= CalculatorBrain(
               Weight: Weight,
               Height: Height,
             );

              Navigator.push(context,MaterialPageRoute(builder: (context){
                return ResultPage(
                  BmiResult: clc.CalculateBmi(),
                  ResultText: clc.getResult(),
                  Interpetation: clc.geInterpetation(),
                );
              }));
            },
          )
        ],
      ) ,


    );
  }
}



class RoundIconButton extends StatelessWidget {

  IconData? iconData;
  Function()? onpress;
  RoundIconButton({this.iconData,this.onpress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:onpress,

      elevation: 0,

      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      fillColor: Color(0xFF4C4F5E),

      child: Icon(iconData),
    );
  }
}





