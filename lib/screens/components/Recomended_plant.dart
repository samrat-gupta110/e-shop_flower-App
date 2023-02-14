import 'package:flutter/material.dart';
import 'package:login_page/screens/components/body.dart';
import 'package:login_page/constants.dart';
import 'package:login_page/screens/components/recommand_plants.dart';
import 'package:login_page/screens/details/compnents/details_screen.dart';

class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            country: "Russia",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> detailsScreen()
              ));
            },
            price: 440,
            image: "assets/plant1.jpg",
            title: "Samantha",
          ),
          RecomendPlantCard(
            country: "Russia",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> detailsScreen()
              ));
            },
            price: 440,
            image: "assets/plant8.jpg",
            title: "Samantha",
          ),
          RecomendPlantCard(
            country: "Russia",
            press: () {},
            price: 440,
            image: "assets/plant3.jpg",
            title: "Samantha",
          ),
        ],
      ),
    );
  }
}

