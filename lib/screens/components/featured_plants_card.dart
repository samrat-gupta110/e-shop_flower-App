import 'package:flutter/material.dart';
import 'package:login_page/constants.dart';
import 'package:login_page/screens/components/featured_plants_card.dart';
import 'body.dart';

class Featured_plant_section extends StatelessWidget {
  const Featured_plant_section({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget> [
          Featured_plant(
            image: "assets/plant8.jpg",
            press: () {  },
          ),
          Featured_plant(
            image: "assets/plant2.jpg",
            press: () {  },
          ),
        ],
      ),
    );
  }
}
class Featured_plant extends StatelessWidget {
  const Featured_plant({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final VoidCallback press;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: KDefaultPadding,
          top: KDefaultPadding / 2,
          bottom: KDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}

