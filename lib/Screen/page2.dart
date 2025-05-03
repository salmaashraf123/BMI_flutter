import 'package:flutter/material.dart';
import 'package:flutter_app/componants/Stating.dart';
import '../componants/Edging.dart';

class page_2 extends StatefulWidget {
  final double re , weight , height , age ;
  const page_2(this.re ,this.weight,this.height ,this.age , {super.key});

  @override
  State<page_2> createState() => _page_2State();
}

class _page_2State extends State<page_2> {
  @override
  Widget build(BuildContext context) {
    late String state = (this.widget.re < 18.5)?"UnderWeight":(this.widget.re >18 &&  this.widget.re <= 25)?
    "Normal" : (this.widget.re >25 && this.widget.re <=30 )?"OverWeight" : (this.widget.re >30 && this.widget.re <=35 )?"Obese class I" : (
        this.widget.re >35 && this.widget.re <=40 )?"Obese class II" : "Obese class III";
    return Scaffold(
        backgroundColor: Color(0xff380347),
        body: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("BMI calculator" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold , color: Colors.white),),
              Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  width:150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.purple,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("BMI" , style: TextStyle(color: Colors.white),),
                      Text("${widget.re}", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 20)),
                      Text(
                          state , style: TextStyle(color: Colors.white)
                      ),
                    ],
                  )
              ),
              SizedBox(height: 20,),
              Column(
                children: [
                  statingg("UnderWeight" , (state == "UnderWeight")? 1 : 0),
                  statingg("Normal" , (state == "Normal")? 1 : 0),
                  statingg("Obese class I" , (state == "Obese class I")? 1 : 0),
                  statingg("Obese class II" , (state == "Obese class II")? 1 : 0),
                  statingg("Obese class III" , (state == "Obese class III")? 1 : 0),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  edge("HEIGHT" , widget.height),
                  edge("WEIGHT" ,  widget.weight),
                  edge("AGE" , widget.age)
                ],
              )
            ]

        )
    );
  }
}