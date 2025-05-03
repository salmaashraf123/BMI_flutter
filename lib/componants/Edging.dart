import 'package:flutter/material.dart';

class edge extends StatefulWidget {
  final String s;
  double res;
  edge(this.s ,this.res, {super.key});

  @override
  State<edge> createState() => _edge ();
}

class _edge extends State<edge> {
  late String s1;
  late double f2;
  @override
  void initState() {
    super.initState();
    s1 = widget.s;
    f2 = widget.res;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text(s1 , style: TextStyle(fontWeight: FontWeight.w600 , color: Colors.white),),
           Container(

             padding: EdgeInsets.only(left: 20 , right: 20 , bottom: 10 , top : 10),

             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(topLeft: Radius.circular(10) , bottomRight: Radius.circular(10)),
               color: Colors.purple,
             ),
             child:Text( "$f2" , style: TextStyle(fontWeight: FontWeight.w600),),
           )
          ],
    );
  }
}