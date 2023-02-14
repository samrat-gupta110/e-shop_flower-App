import 'package:flutter/material.dart';
import 'package:login_page/constants.dart';
import 'body.dart';
import 'icon_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: KDefaultPadding * 3),
      child: SizedBox(
        height: size.height*0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: KDefaultPadding*3),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        padding: EdgeInsets.symmetric(horizontal: KDefaultPadding),
                        icon: SvgPicture.asset("Icons/back_arrow.svg"),
                      ),
                    ),
                    IconCard(icon: "Icons/sun.svg",),
                    IconCard(icon: "Icons/temp.svg",),
                    IconCard(icon: "Icons/water.svg",),
                    IconCard(icon: "Icons/wind.svg",),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height*0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.50),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.fill,
                  image: AssetImage("assets/plant8.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}