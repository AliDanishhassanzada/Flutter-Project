import 'package:flutter/material.dart';
import 'package:app/routes/login.dart';
import 'package:app/routes/GoRoutes.dart';
import 'package:app/routes/form.dart';
import 'package:app/routes/viewData.dart';
import 'package:app/routes/about.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false, 
      onGenerateRoute:(settings){
        if(settings.name=='/'){
          return MaterialPageRoute(builder: (context) => LoginForm());
        }
         if(settings.name=='/GoRutes'){
          return MaterialPageRoute(builder: (context) => GoRoutes());
        }
        if(settings.name=='/form'){
          return MaterialPageRoute(builder: (context) => DataForm());
        }
        if(settings.name=='/viewData'){
          return MaterialPageRoute(builder: (context) => ViewData());
        } 
        if(settings.name=='/about'){
          return MaterialPageRoute(builder: (context) => About());
        } 
      }
      );
  }
}