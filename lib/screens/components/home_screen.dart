import 'package:flutter/material.dart';
import 'package:login_page/constants.dart';
import 'package:login_page/screens/components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/components/bottomnavbar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
  AppBar buildAppBar()
  {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        onPressed: (){},
        icon: Icon(
            Icons.menu,
          color: Colors.white,
        ),
      ),
    );
  }
}

