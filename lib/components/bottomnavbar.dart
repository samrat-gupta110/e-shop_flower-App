import 'package:flutter/material.dart';
import 'package:login_page/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int pageIndex = 0;
  int value  = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: KDefaultPadding * 2,
          right: KDefaultPadding * 2,
          bottom: KDefaultPadding
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (value){
          setState(() {
            pageIndex=value;
          });
        },
        type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon:
            SvgPicture.asset(
                "assets/filter_vintage_FILL0_wght400_GRAD0_opsz48.svg",
              height: 30,
              width: 30,
            ),
                label: "items"),
            BottomNavigationBarItem(icon:
            SvgPicture.asset(
              "assets/favorite_FILL0_wght400_GRAD0_opsz48.svg",
              height: 30,
              width: 30,
            ),
                label: "Cart"),
            BottomNavigationBarItem(icon:
            SvgPicture.asset(
              "assets/person_FILL0_wght400_GRAD0_opsz48 (1).svg",
              height: 30,
              width: 30,
            ),
                label: "User"),
          ]
      ),
    );
  }
}
