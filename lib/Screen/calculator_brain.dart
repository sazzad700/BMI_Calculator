
import 'dart:math';

class CalculatorBrain{
  final int? Height;
  final int? Weight;
  double? _bmi;

  CalculatorBrain({this.Height,this.Weight});

  String CalculateBmi(){

     _bmi=Weight! / pow(Height!/100, 2);

    return _bmi!.toStringAsFixed(1);

  }

  String getResult(){

    if(_bmi!>=25){
      return "OverWeight";
    }else if(_bmi!>=18.5){
      return "Normal";
    }else{
      return "UnderWeight";
    }

  }

  String geInterpetation(){
    if(_bmi!>=25){
      return "Halar vai khana komai kha ar exercise beshi kore kor ";
    }else if(_bmi!>=18.5){
      return "Savash tor weight thik ase";
    }else{
      return "Halar vhai khana baraia kha din din kangaroo hoiya jaitasos";
    }
  }

}