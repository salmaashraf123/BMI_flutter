import 'package:flutter/material.dart';

class contain extends StatefulWidget {
  final String s;
  contain(this.s ,{super.key});

  @override
  State<contain> createState() => _contain ();
}

class _contain extends State<contain> {
  late String s1;
  bool f = false;
  @override
  void initState()
  {
    super.initState();
    s1 = widget.s;
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          setState(() {
            f = !f;
          });
        },
        child: Container(
           margin: EdgeInsets.all(10),
           height: 200,
          width:150,
          decoration: BoxDecoration(
            color: f==true?Color(0xffdc00fd):Colors.purple,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 4,
              ),
            ],
          ),
          alignment: Alignment.center,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon((s1=='Male')?Icons.male:Icons.female, size:50,color: Colors.white,),
              Text(s1 , style:TextStyle(color:Colors.white , fontSize: 20 , fontWeight: FontWeight.bold)),
            ],
          ),
      )
      );
  }
}