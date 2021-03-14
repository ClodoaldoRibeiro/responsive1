import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          "https://img-a.udemycdn.com/course/240x135/1764438_44b7_5.jpg?0fmC9OYgarmDGyN0BUvvi6qSToevDGqpOzMVanddAncypuqNLaPW4wesE_TVEjTghBowVT0SNZbUX_vyAtX2S2Pi90HGixqs5Dzgko4PYJkoT883fi4XtS3ENF5Dxfv5",
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          "Criação de Apps Android e iOS com Flutter - Crie 16 Apps",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
        ),
        Text(
          "Daniel Ciolfi",
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          "R\$ 29,99",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
