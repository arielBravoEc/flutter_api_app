import 'package:flutter/material.dart';
import 'package:api_rest_app/widgets/circle.dart';
import 'package:api_rest_app/widgets/icon_container.dart';
import 'package:api_rest_app/utils/responsive.dart';
import 'package:api_rest_app/widgets/login_form.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final Responsive responsive = Responsive.of(context);
    final Size size = MediaQuery.of(context).size;
    final double pinkSize = responsive.wp(80);
    final double orangeSize = responsive.wp(57);
    return Scaffold(
      //GESTURE DETECTOR PARA SALIR DE LOS INPUTS EN IOS(FOCUSABLE)
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        //SingleChildScrollView para cuando los inputs suben su posición cuando se abre el teclado
        child: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        height: responsive.height,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
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
           Positioned(
             child: Column(children: <Widget>[
               IconContainer(size: responsive.wp(20)),
               SizedBox(height: responsive.dp(3),),
               Text(
              "Hello Again\n Welcome Back !", 
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: responsive.dp(1.6),
               ),
               )
             ],
             ),
             top: pinkSize*0.35,
             ),
             LoginForm()
          
          ],
        ),
      ),
          )
        )
    );
  }
}