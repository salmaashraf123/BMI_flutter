import 'package:flutter/material.dart';

class display extends StatefulWidget {
  final String s ;
  double ss;
 display (this.s ,this.ss,{super.key});
  @override
  State<display> createState() => _display  ();
}

class _display extends State<display > {
  late String s1;
  late double value ;
  @override
  void initState()
  {
    super.initState();
    s1 = widget.s;
    value = widget.ss;
  }
  Widget build(BuildContext context) {
     return Container(
        margin: EdgeInsets.all(10),
        width:150,
         height: 175,
         decoration: BoxDecoration(
           color: Colors.purple,
           borderRadius: BorderRadius.circular(10),
           boxShadow: [
             BoxShadow(
               color: Colors.black,
               blurRadius: 4,
             ),
           ],
         ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text( s1, style:TextStyle(color:Colors.white , fontSize: 20 , fontWeight: FontWeight.bold)),
             Text( "${value}" , style:TextStyle(color:Colors.white , fontSize: 20 , fontWeight: FontWeight.bold)),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 IconButton(
                   onPressed: (){
                     setState(() {

                       value++;
                       widget.ss++;

                     });
                   },
                   icon: Icon(Icons.add_circle_outlined , color: Color(0xffdc00fd),),
                 ),
                 IconButton(
                     onPressed: (){
                       setState(() {
                         value--;
                         widget.ss--;
                       });
                     },
                     icon:Icon(Icons.remove_circle , color: Color(0xffdc00fd),),
                 ),
               ],

             )
          ],
       )

     );
  }
}