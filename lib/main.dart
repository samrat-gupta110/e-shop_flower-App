import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:login_page/constants.dart';
import 'package:login_page/screens/components/home_screen.dart';
import 'package:login_page/splash.dart';

import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplashScreen(
          splash: Icon(
              Icons.home,
            size: 80,
            color: Colors.lightBlueAccent,
          ),
         duration: 3000,
         splashTransition: SplashTransition.scaleTransition,
         backgroundColor: kPrimaryColor,
         // Center(
           // child: Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              //children: [
                //Container(
                  //height: 100,
                  //width: 100,
                  //color: Colors.blue,
                //),
                //Container(
                  //child: Text(
                    //'Splash Screen',
                    //style: TextStyle(
                        //fontSize: 24,
                        //fontWeight: FontWeight.bold
                    //),
                  //),
                //),
              //],
            //),
          //),
          nextScreen: Login(),
      ),
    );
  }
}
