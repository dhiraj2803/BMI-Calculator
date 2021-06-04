import 'package:bmi_calculator/screens/InputScreen.dart';
import 'package:bmi_calculator/utils/constant.dart';
import 'package:flutter/material.dart';
class DetailsView extends StatelessWidget {
  DetailsView({required this.bmi , required this.conditon});
  final String bmi;
  final String conditon;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var Swidth = screenSize.width;
    var Sheight = screenSize.height;
    return Scaffold(
      backgroundColor: kBackground,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 25, 25, 35),
        child: Container(
          height: Sheight,
          width: Swidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                      "BMI Info",
                      style: kHeadingStyle,
                    ),
                    RawMaterialButton(
                      elevation: 20.0,
                      child: Icon(
                        Icons.refresh,
                        color: kText,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InputScreen(),
                          ),
                        );
                      },
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
              SizedBox(height: 50,),
              Material(
                borderRadius: BorderRadius.circular(20.0),
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: kBackground,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                  height: Sheight/6,
                  width: Swidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Your BMI",style: TextStyle(fontSize: 25,color: kText),),
                      Text("$bmi" ,style: TextStyle(fontSize: 50,color: kText),),
                      Text("$conditon" ,style: TextStyle(fontSize: 25,color: kActive),),
                    ],
                  ),

                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
