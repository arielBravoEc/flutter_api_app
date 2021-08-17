
import 'package:flutter/material.dart';
import 'package:api_rest_app/src/pages/home_page.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Para hacer que la app solo se muestre en modo vertical
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
      ]);


    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}