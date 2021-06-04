import 'package:bmi_calculator/screens/DetailsScreen.dart';
import 'package:bmi_calculator/screens/InputScreen.dart';
import 'package:bmi_calculator/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.UserHeight, required this.UserWeight});
  final int UserHeight;
  final int UserWeight;
  @override
  Widget build(BuildContext context) {
    int weight = UserWeight;
    int height = UserHeight;
    double bmi;
    double bmiPercent;

    bmi = weight / pow(height / 100, 2).toDouble();
    bmiPercent = (bmi / 60);
    String bmiResult = bmi.toStringAsFixed(1);

    String normal = "Normal ";
    String below = "Low ";
    String above = "Higher ";
    String extremeAbove = "Extremely Higher ";
    String cond = "" ;

    if (bmi < 18.5){
      cond = below;
    }
    else if (bmi >= 18.5 && bmi < 25){
      cond = normal;
    }else if (bmi >= 25 && bmi < 30){
      cond = above;
    }
    else if (bmi >= 30){
      cond = extremeAbove;
    }

    var screenSize = MediaQuery.of(context).size;
    var Swidth = screenSize.width;
    var Sheight = screenSize.height;
    return Scaffold(
      backgroundColor: kBackground,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 30, 25, 35),
        child: Container(
          width: Swidth,
          height: Sheight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //top container(back button,heading)
              Container(
                height: Sheight / 12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RawMaterialButton(
                      elevation: 20.0,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: kText,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      constraints: BoxConstraints.tightFor(
                        width: 45.0,
                        height: 45.0,
                      ),
                      shape: CircleBorder(),
                      fillColor: kBackground,
                    ),
                    Text(
                      "BMI Result",
                      style: kHeadingStyle,
                    ),
                    RawMaterialButton(
                      elevation: 20.0,
                      child: Icon(
                        Icons.refresh,
                        color: kText,
                      ),
                      onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InputScreen(),
                        ),
                      );},
                      constraints: BoxConstraints.tightFor(
                        width: 45.0,
                        height: 45.0,
                      ),
                      shape: CircleBorder(),
                      fillColor: kBackground,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 230,
                    height: 230,
                    color: kBackground,
                    child: Material(

                      elevation: 20,
                      borderRadius: BorderRadius.circular(400),
                      child: CircularPercentIndicator(
                        radius: 200.0,
                        lineWidth: 20.0,
                        animation: true,
                        percent: bmiPercent <= 1 ? bmiPercent : 1.0,
                        animationDuration: 1000,
                        center: Text(
                          "$bmiResult",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: kActive,
                      ),
                    ),
                  ),
                  SizedBox(height: 70,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("You have ",style: TextStyle(color: kText,fontSize: 23),),
                      Text("$cond",style: TextStyle(color: kActive,fontSize: 23)),
                      Text("Body weight!",style: TextStyle(color: kText,fontSize: 23)),
                    ],
                  ),
                ],
              ),
              Container(
                child: Center(
                  child: GestureDetector(
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      elevation: 10,
                      child: Container(
                          width: Swidth / 2.5,
                          height: Sheight / 15,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Details",
                                style: kButtonText,
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: kActive,
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsView(bmi: bmiResult, conditon: cond),),
                        );

                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
