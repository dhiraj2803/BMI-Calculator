import 'package:bmi_calculator/screens/InputScreen.dart';
import 'package:bmi_calculator/utils/constant.dart';
import 'package:bmi_calculator/utils/height_utils.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  DetailsView({required this.bmi, required this.conditon});

  final String bmi;
  final String conditon;

  @override
  Widget build(BuildContext context) {
    String info = "";
    if (conditon == "Low ") {
      info = "Under Weight";
    } else if (conditon == "Normal ") {
      info = "Normal";
    } else if (conditon == "Higher ") {
      info = "Overweight";
    } else if (conditon == "Extremely Higher ") {
      info = "Obese";
    }
    var screenSize = MediaQuery.of(context).size;
    var Swidth = screenSize.width;
    var Sheight = screenSize.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackground,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 30, 15, 35),
          child: Container(
            height: Sheight,
            width: Swidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
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
                    SizedBox(
                      height: 50,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20.0),
                      elevation: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: kBackground,
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        height: Sheight / 6,
                        width: Swidth,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Your BMI",
                              style: TextStyle(fontSize: 23, color: kText),
                            ),
                            Text(
                              "$bmi",
                              style: TextStyle(fontSize: 32, color: kText),
                            ),
                            Text(
                              "$info",
                              style: TextStyle(
                                  fontSize: 23,
                                  color: kActive,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20.0),
                      elevation: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: kBackground,
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        height: Sheight / 3,
                        width: Swidth,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Less than 18.5",
                                  style: TextStyle(fontSize: 20, color: kText),
                                ),
                                Text(
                                  "Under Weight",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: kText,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Scale(width: Swidth / 1.3),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "18.5 to 24.9",
                                  style: TextStyle(fontSize: 20, color: kText),
                                ),
                                Text("Normal",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: kText,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Scale(width: Swidth / 1.3),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "25 to 29.9",
                                  style: TextStyle(fontSize: 20, color: kText),
                                ),
                                Text(
                                  "Overweight",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: kText,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Scale(width: Swidth / 1.3),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Above 30",
                                  style: TextStyle(fontSize: 20, color: kText),
                                ),
                                Text("Obese",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: kText,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
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
                                  "Re-Calculate",
                                  style:
                                      kButtonText.copyWith(color: Colors.white),
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
                            builder: (context) => InputScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
