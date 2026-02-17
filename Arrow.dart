import 'package:flutter/material.dart';

import 'SpaceColors.dart';

class Arrow extends StatelessWidget{
  IconData icon;
  Arrow({required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 43,
      decoration: BoxDecoration(
        color: SpaceColors.red,
        borderRadius: BorderRadius.circular(43),
      ),
      child: Icon(icon,color: SpaceColors.white,size: 25,),
    );
  }

}