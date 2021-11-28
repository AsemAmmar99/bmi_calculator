import 'dart:math';

import 'package:bmi_calculator/modules/bmi_result/bmi_result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {

  bool isMale = true;
  double height = 120.0;
  int weight = 60;
  int age = 20;

  // var result = weight / pow(height / 100, 2);
  // print(result.round());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple[900],
        title: const Text(
          'BMI Calculator',
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                  Icons.male,
                                  size: 55.0,
                                  color: Colors.white,
                              ),
                              const SizedBox(height: 10.0,),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: isMale ? Colors.deepPurple : Colors.grey[900],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                  Icons.female,
                                  size: 55.0,
                                  color: Colors.white,
                              ),
                              const SizedBox(height: 10.0,),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: !isMale ? Colors.deepPurple : Colors.grey[900],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${height.round()}',
                            style: const TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 3.0,),
                          Text(
                            'CM',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                      Slider(
                          value: height,
                          max: 220.0,
                          min: 80.0,
                          activeColor: Colors.grey[700],
                          inactiveColor: Colors.grey[800],
                          thumbColor: Colors.deepPurple[900],
                          onChanged: (value){
                            setState(() {
                              height = value;
                            });
                          },
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[900],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20.0, top: 15.0, bottom: 15.0,),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.grey[900],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                            ),
                            Text(
                              '$weight',
                              style: const TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900,
                                  color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                  heroTag: 'weight-',
                                  mini: true,
                                  child: const Icon(
                                  Icons.remove,
                                ),
                                  backgroundColor: Colors.grey[700],
                                ),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                  heroTag: 'weight+',
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                  backgroundColor: Colors.grey[700],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.grey[900],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                            ),
                            Text(
                              '$age',
                              style: const TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                  heroTag: 'age-',
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                  backgroundColor: Colors.grey[700],
                                ),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                  heroTag: 'age+',
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                  backgroundColor: Colors.grey[700],
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
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20.0), bottomLeft: Radius.circular(20.0),),
                color: Colors.deepPurple[900],
              ),
              width: double.infinity,
              height: 50.0,
              child: MaterialButton(
                  onPressed: (){
                    double result = weight / pow(height / 100, 2);
                    print(result.round());

                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => BmiResultScreen(isMale: isMale, age: age, result: result.round(),),
                      ),
                    );
                  },
                child: const Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
