import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class card extends StatelessWidget {
  card({super.key,required this.txt});
  // final List data = [
  //   {"name": "Software"},
  //   {"name": "Support"},
  //   {"name": "graphics "},
  //   {"name":"video editing"},
    
    
  //   {"name": "marketing"}
  // ];
  String? txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 20,
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 0,
            offset: Offset(10, 10))
      ]),
      child: Card(
        elevation: 8,
        color: Colors.white,
        child: Column(
          children: [
            Icon(
              FontAwesomeIcons.laptopCode,
              size: 50,
            ),
            SizedBox(
              height: 50,
            ),
            
            Text(
              txt.toString(),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
