import 'package:bmi_calculator/screens/ResultPage.dart';
import 'package:bmi_calculator/utils/constant.dart';
import 'package:bmi_calculator/utils/height_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  bool maleTap = false ;
  bool femaleTap = false ;
  bool range1 =false;
  bool range2 =false;
  bool range3 =false;
  bool range4 =true;
  bool range5 =false;
  bool range6 =false;
  bool range7 =false;

  int heightInput = 160;
  int weight = 60;
  int age = 22;
//   Widget _SetColor() {
//     if(maleTap==true){
//       return
//     }
//
// }
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        backgroundColor: kBackground,
        elevation: 0.0,
        title: Center(child: Text('BMI Calculator',style: kHeadingStyle,)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      maleTap = true;
                      femaleTap = false;
                    });
                  },
                  child: Material(
                    borderRadius: BorderRadius.circular(10.0) ,
                    elevation: 20,
                    child: Container(
                      width: width/2.5,
                      height: height/15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Male",style: maleTap == true ? kButtonTextActive : kButtonText),
                        ],
                      ),
                        decoration: BoxDecoration(
                          color: maleTap == true
                              ? kActive
                              : kBackground,
                          borderRadius: BorderRadius.circular(10.0),
                        )
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      maleTap = false;
                      femaleTap = true;
                    });
                  },
                  child: Material(
                    elevation: 20.0,
                    borderRadius:BorderRadius.circular(10.0) ,
                    child: Container(
                        width: width/2.5,
                        height: height/15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Female",style: femaleTap == true ? kButtonTextActive : kButtonText),
                        ],
                      ),
                        decoration: BoxDecoration(

                          color: femaleTap == true
                              ? kActive
                              : kBackground,
                          borderRadius: BorderRadius.circular(10.0),
                        )
                    ),
                  ),
                )
              ],
            )),
            Container(
              height: height/1.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    // height input
                    borderRadius: BorderRadius.circular(10.0) ,
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        color: kBackground,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: width/2.5,
                      //height info
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 6,),
                          //height display
                          Container(
                            height: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Height",style: kButtonText,),

                                Text("$heightInput CM",style:TextStyle(
                                  fontSize: 20.0,
                                  color: kText,
                                )),
                              ],
                            ),

                          ),
                          SizedBox(height: 6,),
                          Container(
                            height: (height/1.6) - 75 ,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                //slider
                                Container(
                                  width: width/12,
                                  child: SliderTheme(
                                      data: SliderTheme.of(context).copyWith(

                                        inactiveTrackColor: Colors.white,
                                        activeTrackColor: kActive,
                                        thumbColor: Colors.white,
                                        overlayColor: kBackground2,
                                        thumbShape:
                                        RoundSliderThumbShape(enabledThumbRadius: 10.0),
                                        overlayShape:
                                        RoundSliderOverlayShape(overlayRadius: 15.0),
                                      ),
                                    child: RotatedBox(
                                      quarterTurns: 3,
                                      child: Slider(
                                        divisions: 120,
                                        value: heightInput.toDouble(),
                                        min: 100.0,
                                        max: 220.0,
                                        onChanged: (double newValue) {
                                          setState(() {
                                            heightInput = newValue.round();
                                            if(heightInput>=100 && heightInput<120){
                                              range1 = true;
                                              range2 = false;
                                              range3 = false;
                                              range4 = false;
                                              range5 = false;
                                              range6 = false;
                                              range7 = false;
                                            }else if(heightInput>=120 && heightInput<140){
                                              range1 = false;
                                              range2 = true;
                                              range3 = false;
                                              range4 = false;
                                              range5 = false;
                                              range6 = false;
                                              range7 = false;
                                            }else if(heightInput>=140 && heightInput<160){
                                              range1 = false;
                                              range2 = false;
                                              range3 = true;
                                              range4 = false;
                                              range5 = false;
                                              range6 = false;
                                              range7 = false;
                                            }else if(heightInput>=160 && heightInput<180){
                                              range1 = false;
                                              range2 = false;
                                              range3 = false;
                                              range4 = true;
                                              range5 = false;
                                              range6 = false;
                                              range7 = false;
                                            }else if(heightInput>=180 && heightInput<200){
                                              range1 = false;
                                              range2 = false;
                                              range3 = false;
                                              range4 = false;
                                              range5 = true;
                                              range6 = false;
                                              range7 = false;
                                            }else if(heightInput>=200 && heightInput<220){
                                              range1 = false;
                                              range2 = false;
                                              range3 = false;
                                              range4 = false;
                                              range5 = false;
                                              range6 = true;
                                              range7 = false;
                                            }else if(heightInput==220){
                                              range1 = false;
                                              range2 = false;
                                              range3 = false;
                                              range4 = false;
                                              range5 = false;
                                              range6 = false;
                                              range7 = true;
                                            }
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                //marker
                                Container(
                                  width: width/20,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 15),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Scale(width: width/25,),
                                        Scale(width: width/50,),
                                        Scale(width: width/40,),
                                        Scale(width: width/50,),
                                        Scale(width: width/25,),
                                        Scale(width: width/50,),
                                        Scale(width: width/40,),
                                        Scale(width: width/50,),
                                        Scale(width: width/25,),
                                        Scale(width: width/50,),
                                        Scale(width: width/40,),
                                        Scale(width: width/50,),
                                        Scale(width: width/25,),
                                        Scale(width: width/50,),
                                        Scale(width: width/40,),
                                        Scale(width: width/50,),
                                        Scale(width: width/25,),
                                        Scale(width: width/50,),
                                        Scale(width: width/40,),
                                        Scale(width: width/50,),
                                        Scale(width: width/25,),
                                        Scale(width: width/50,),
                                        Scale(width: width/40,),
                                        Scale(width: width/50,),
                                        Scale(width: width/25,),

                                      ],
                                    ),
                                  ),
                                ),
                                //height
                                Container(
                                  width: width/7,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("220", style: range7 == true ? kHeightInRange : kHeightNotInRange,),
                                        Text("200", style: range6 == true ? kHeightInRange : kHeightNotInRange,),
                                        Text("180", style: range5 == true ? kHeightInRange : kHeightNotInRange,),
                                        Text("160", style: range4 == true ? kHeightInRange : kHeightNotInRange,),
                                        Text("140", style: range3 == true ? kHeightInRange : kHeightNotInRange,),
                                        Text("120", style: range2 == true ? kHeightInRange : kHeightNotInRange,),
                                        Text("100", style: range1 == true ? kHeightInRange : kHeightNotInRange,),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width/2.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        // weight info
                        Material(
                          //weight input
                          borderRadius: BorderRadius.circular(10.0) ,
                          elevation: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              color: kBackground,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            height: height/3.3,
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  'Weight',
                                  style: kButtonText,
                                ),
                                Text(
                                  weight.toString(),
                                  style: kButtonText.copyWith(fontSize: 40),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RawMaterialButton(
                                      elevation: 20.0,
                                      child: Icon(FontAwesomeIcons.minus,color: kText),
                                      onPressed: (){
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      constraints: BoxConstraints.tightFor(
                                        width: 45.0,
                                        height: 45.0,
                                      ),
                                      shape: CircleBorder(),
                                      fillColor: kBackground,
                                    ),
                                    SizedBox(width: 10.0,),
                                    RawMaterialButton(
                                      elevation: 20.0,
                                      child: Icon(FontAwesomeIcons.plus,color: kText,),
                                      onPressed: (){
                                        setState(() {
                                          weight++;
                                        });
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
                              ],
                            ),
                          ),
                        ),

                        //age info
                        Material(
                          //age input
                          borderRadius: BorderRadius.circular(10.0) ,
                          elevation: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              color: kBackground,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            height: height/3.3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  'Age',
                                  style: kButtonText,
                                ),
                                Text(
                                  age.toString(),
                                  style: kButtonText.copyWith(fontSize: 40),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RawMaterialButton(
                                      elevation: 20.0,
                                      child: Icon(FontAwesomeIcons.minus,color: kText),
                                      onPressed: (){
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      constraints: BoxConstraints.tightFor(
                                        width: 45.0,
                                        height: 45.0,
                                      ),
                                      shape: CircleBorder(),
                                      fillColor: kBackground,
                                    ),
                                    SizedBox(width: 10.0,),
                                    RawMaterialButton(
                                      elevation: 20.0,
                                      child: Icon(FontAwesomeIcons.plus,color: kText,),
                                      onPressed: (){
                                        setState(() {
                                          age++;
                                        });
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
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Center(
                child: GestureDetector(
                  child: Material(
                    borderRadius: BorderRadius.circular(10.0) ,
                    elevation: 10,
                    child: Container(
                        width: width/1.5,
                        height: height/15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Calculate",style: kButtonText,),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: kActive,
                          borderRadius: BorderRadius.circular(10.0),
                        )
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(UserWeight: weight,UserHeight: heightInput,),
                      ),
                    );

                  },
                ),
              ),
            ),
          ],
        ),
      ),
      //body: ,
    );
  }
}

