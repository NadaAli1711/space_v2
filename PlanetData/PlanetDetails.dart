import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space_app/AppStyles.dart';
import 'package:space_app/PlanetAppBar/PlanetAppBar.dart';
import '../SpaceColors.dart';
import 'PlanetData.dart';
class PlanetDetails extends StatelessWidget{
  static const String routName = 'PlanetDetails';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SpaceColors.black,
      appBar: PlanetAppBar(height: 144,name: PlanetData.planets[0].planetName,title: PlanetData.planets[0].title),
      body: SingleChildScrollView(child: Container(
        padding: EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(padding: EdgeInsets.only(bottom: 36),height:343,width:double.infinity,child: Flutter3DViewer(src: 'assets/models/earth.glb',),),
            Text('About',style: AppStyles.textStyle,),
            Text(PlanetData.planets[0].about,style: AppStyles.paragraphStyle),
            SizedBox(height: 15,),
            // Text(PlanetData.planets[0].about,style: AppStyles.paragraphStyle),
            Text('Distance from Sun (km) : ${PlanetData.planets[0].distanceFromSun}',style: AppStyles.subTitleStyle),
            Text('Orbital Period (Earth years) : ${PlanetData.planets[0].orbitalPeriod}',style: AppStyles.subTitleStyle),
            Text('Radius (km) : ${PlanetData.planets[0].radius}',style: AppStyles.subTitleStyle),
            Text('Mass (kg) :${PlanetData.planets[0].mass}',style: AppStyles.subTitleStyle),
            Text('Gravity (m/s²) : ${PlanetData.planets[0].gravity}',style: AppStyles.subTitleStyle),
            Text('Surface Area (km²) : ${PlanetData.planets[0].surfaceArea}',style: AppStyles.subTitleStyle),
          ],
        ),
      ),
    ));
  }

}