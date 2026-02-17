import 'package:flutter/material.dart';
import 'package:space_app/LoginScreen.dart';
import 'package:space_app/PlanetData/PlanetDetails.dart';
import 'HomeScreen.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:LoginScreen.routeName,
      routes: {
        LoginScreen.routeName : (context) => LoginScreen(),
        HomeScreen.routeName : (context) => HomeScreen(),
        PlanetDetails.routName : (context) => PlanetDetails(),
      },
    )
  );
}