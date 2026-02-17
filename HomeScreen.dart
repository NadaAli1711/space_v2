import 'package:flutter/material.dart';
import 'package:space_app/Arrow.dart';
import 'package:space_app/PlanetData/PlanetDetails.dart';
import 'package:space_app/SpaceElevatedButton.dart';
import 'package:space_app/AppStyles.dart';
import 'PlanetAppBar/PlanetAppBar.dart';
import 'SpaceColors.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'HomeScreen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const routeName = 'HomeScreen';
  List<String> imageNames = ['earth','jupiter',
    'mars',
    'mercury',
    'neptune',
    'saturn',
    'sun',
    'uranus',
    'venus'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SpaceColors.black,
      appBar: PlanetAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 339,
              width: 342,
              alignment: Alignment.center,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Image.asset('assets/images/scroll_images/${imageNames[index]}.png',
                    fit: BoxFit.fill,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: 9,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Arrow(icon: Icons.arrow_back),
                Text('Earth',style: AppStyles.textStyle,),
                Arrow(icon: Icons.arrow_forward)
              ],
            ),
            SpaceElevatedButton(text: 'Earth',routeName: routeName,onButtonClick: onButtonClick,context: context,)

          ],
        ),
      ),
    );
  }
  void onButtonClick(BuildContext context,String routeName){
    Navigator.of(context).pushNamed(PlanetDetails.routName);
  }
}
