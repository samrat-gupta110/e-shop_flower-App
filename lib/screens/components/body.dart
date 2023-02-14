import 'package:flutter/material.dart';
import 'package:login_page/constants.dart';
import 'package:login_page/screens/components/header_with_searchbox.dart';
import 'package:login_page/screens/components/title_with_morebtnn.dart';
import 'package:login_page/screens/components/Recomended_plant.dart';
import 'package:login_page/screens/components/featured_plants_card.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //It will provide the total height and width of the screen.
    Size size = MediaQuery.of(context).size;
    //It will enable scrolling on the smaller devices.
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMorebtn(
            title: "Recomended", key: null,
            press: () {},
          ),
          //It will cover 40% of the total length.
          RecomendPlants(),
          TitleWithMorebtn(key: null, title: "Featured Plants", press: (){}),
          Featured_plant_section(),
          SizedBox(height: KDefaultPadding),
        ],
      ),
    );
  }
}


