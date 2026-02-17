import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space_app/AppStyles.dart';
import 'package:space_app/PlanetAppBar/PlanetAppBar.dart';
import '../SpaceColors.dart';
import 'PlanetData.dart';
import 'PlanetModel.dart';

class PlanetDetails extends StatelessWidget {
  static const String routName = 'PlanetDetails';

  @override
  Widget build(BuildContext context) {
    int args = ModalRoute.of(context)?.settings.arguments as int;
    PlanetModel currentPlanet = PlanetData.planets[args];
    return Scaffold(
      backgroundColor: SpaceColors.black,
      appBar: PlanetAppBar(
        height: 144,
        name: currentPlanet.planetName,
        title: currentPlanet.title,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 36),
                height: 343,
                width: double.infinity,
                child: Flutter3DViewer(
                  src:
                      'assets/models/${currentPlanet.planetName.toLowerCase()}.glb',
                ),
              ),
              Text('About', style: AppStyles.textStyle),
              Text(currentPlanet.about, style: AppStyles.paragraphStyle),
              SizedBox(height: 15),
              // Text(PlanetData.planets[0].about,style: AppStyles.paragraphStyle),
              Text(
                'Distance from Sun (km) : ${currentPlanet.distanceFromSun}',
                style: AppStyles.subTitleStyle,
              ),
              Text(
                'Orbital Period (Earth years) : ${currentPlanet.orbitalPeriod}',
                style: AppStyles.subTitleStyle,
              ),
              Text(
                'Radius (km) : ${currentPlanet.radius}',
                style: AppStyles.subTitleStyle,
              ),
              Text(
                'Mass (kg) :${currentPlanet.mass}',
                style: AppStyles.subTitleStyle,
              ),
              Text(
                'Gravity (m/s²) : ${currentPlanet.gravity}',
                style: AppStyles.subTitleStyle,
              ),
              Text(
                'Surface Area (km²) : ${currentPlanet.surfaceArea}',
                style: AppStyles.subTitleStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
