import 'package:flutter/material.dart';
import 'package:space_app/Arrow.dart';
import '../CustomTitle.dart';
import '../SpaceColors.dart';

PreferredSizeWidget PlanetAppBar({
  double height = 237,
  String name = 'Explore',
  String title = 'Which planet \nwould you like to explore?',
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    toolbarHeight: height,

    flexibleSpace: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/top.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: <Color>[SpaceColors.gradient, SpaceColors.black],
            ),
          ),
        ),
        Customtitle(
          text: name,
          paddingTop: 26,
          alignmentPosition: Alignment.topCenter,
        ),
        Container(alignment:Alignment.topLeft,padding:EdgeInsets.only(top:26),child:Arrow(icon: Icons.arrow_back) ,),
        Customtitle(text: title, paddingLeft: 20),
      ],
    ),
  );
}
