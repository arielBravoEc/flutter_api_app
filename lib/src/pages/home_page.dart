
import 'package:flutter/material.dart';
import 'package:api_rest_app/widgets/circle.dart';
class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {


    final Size size = MediaQuery.of(context).size;
    final double pinkSize = size.width*0.8;
    final double orangeSize = size.width*0.57;
    return Scaffold(
      
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
             Positioned(
             child: Circle(
               size: pinkSize, //50% del ancho
               colors: [Colors.pink, Colors.pinkAccent]
               ),
             top: -(pinkSize)*0.4,
             right: -(pinkSize)*0.2,
           ),
           Positioned(
             child: Circle(
               size: orangeSize, 
               colors: [Colors.orange, Colors.deepOrangeAccent]
               ),
             top: -(orangeSize)*0.55,
             left: -(orangeSize)*0.15,
           ),
          
          ],
        ),
      )
    );
  }
}