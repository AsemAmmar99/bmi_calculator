import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {

  final int result;
  final bool isMale;
  final int age;
  String status = '';

  BmiResultScreen({Key? key,
    required this.result,
    required this.isMale,
    required this.age}
    ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple[900],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined
        ),
          onPressed: () {
            Navigator.pop(context);
        },
        ),
        title: const Text(
          'BMI Result',
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gender: ${isMale ? 'Male' : 'Female'}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white
                ),
              ),
              Text(
                'Result: $result',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white
                ),
              ),
              Text(
                'Age: $age',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white
                ),
              ),
              Text(
                'Status: ${statusCalc()}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String statusCalc(){
    if(result < 18.5){
      status = 'Underweight';
    }else if(result >= 18.5 && result <= 24.9){
      status = 'Normal';
    }else if(result >= 25.0 && result <= 29.9){
      status = 'Overweight';
    }else if(result >= 30.0){
      status = 'Obese';
    }
    return status;
  }

}
