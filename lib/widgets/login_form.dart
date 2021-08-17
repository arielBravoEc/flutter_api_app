

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:api_rest_app/widgets/input_text.dart';
import 'package:api_rest_app/utils/responsive.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {

   final Responsive responsive =  Responsive.of(context);

    return Positioned(
      bottom: 30,

      child : Container(
        //podemos hacer lo mismo para todo que sea responsive
        constraints: BoxConstraints(maxWidth: responsive.isTablet? 450: 360),
        child: Column(
        children: <Widget>[
        InputText(
          label: "EMAIL ADDRESS", 
          keyboardType: TextInputType.emailAddress,
          fontSize: responsive.isTablet ? responsive.dp(1.6): responsive.dp(1.4),
          ),
          SizedBox(
          height: responsive.hp(2),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black12
              )
            )
          ),
          child: Row(
            children: <Widget>[
              //ocupe todo el espacio disponible
              Expanded(
                child: InputText(
                  label: "PASSWORD", 
                  obscureText: true, 
                  borderEnabled: false,
                  fontSize: responsive.isTablet ? responsive.dp(1.6): responsive.dp(1.4),
                )
              ),
              TextButton(
                onPressed: (){}, 
                child: Text("Forgot Password"),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  primary: Colors.black87,
                  textStyle: TextStyle(
                    fontSize: responsive.isTablet ? responsive.dp(1.4): responsive.dp(1.2),
                    fontWeight: FontWeight.bold
                  )
                  
                  
                ),
                )
            ],
            ),
            
        ),
        SizedBox(
          height: responsive.hp(5),
        ),
        SizedBox(
          width: double.infinity,
          child: TextButton(
          onPressed: (){}, 
          child: Text("Sign In"),
          
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20),
            backgroundColor: Colors.pinkAccent,
            primary: Colors.white,
            textStyle: TextStyle(
              fontSize: responsive.dp(1.4)
            )
          ),
          ),
        ),
        SizedBox(
          height: responsive.hp(2),
        ), 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,//centrado horizontalmente
          children: <Widget>[
            Text("New to friendly Desi ?", style: TextStyle(fontSize: responsive.dp(1.5)),),
            TextButton(
              onPressed: (){}, 
              child: Text("Sign Up"),
              style: TextButton.styleFrom(
                primary: Colors.pinkAccent,
                textStyle: TextStyle(fontSize: responsive.dp(1.5))
              ),
              )
          ],
          ),
          SizedBox(
          height: responsive.hp(10),
        ),
          
        
      ],
    ),
      )
    );
  }
}