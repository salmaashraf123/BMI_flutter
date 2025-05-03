import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/page2.dart';
import 'package:flutter_app/componants/container2.dart';

import '../componants/container.dart';
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  double val = 200;
  double weight = 40;
  double age = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff380347),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("BMI calculator" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold , color: Colors.white),),
          Row(
            children: [
               contain("Male"),
               contain("Female")
            ],
          ),
          Container(
            height: 100,
            width: 320,
            margin:EdgeInsets.all(10) ,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.purple,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                BoxShadow(
                color: Colors.black,
                blurRadius: 4,
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("HEIGHT"  , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.white),),
                SizedBox(height: 2),
                Slider(
                    value: val,
                    inactiveColor: Color(0xff380347),
                    activeColor: Color(0xffdc00fd),
                    min: 100,
                    max:300,
                    divisions: 300,
                    label:
                      val.round().toString(),
                    onChanged: (double newVal){
                      setState(() {
                        val = newVal;
                      });
                    })
              ],
            ),

          ),
          Row(
            children: [
              display("WEIGHT" , weight),
              display("AGE" , age)
            ],
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
                onPressed:(){
                  double res = weight/(val*val);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page_2(res , weight , val , age)));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                child: Text("Calculate" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.white)),
            ),
          )
        ],
      )
    );
  }
}


