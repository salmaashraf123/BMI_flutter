import 'package:flutter/material.dart';

class statingg extends StatefulWidget {
  final String s ;
  final int f;
  statingg(this.s ,this.f , {super.key});

  @override
  State<statingg> createState() => _statingg ();
}

class _statingg extends State<statingg> {
  late String s1;
  @override
  void initState() {
    super.initState();
    s1 = widget.s;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding:EdgeInsets.all(2),
      width: double.infinity,
      height: 25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
         color: widget.f == 1?Color(0xffda44ef) : Colors.purple,
      ),
      child: Text(s1 , style:TextStyle(color:Colors.white , fontWeight: widget.f == 1? FontWeight.w600 : FontWeight.normal)),
    );
  }
}