import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:obonstore/controllers/classes/Utilities/Utils/utils.dart';
import 'package:obonstore/controllers/classes/home/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //
  Timer? timer;
  //
  @override
  void initState() {
    super.initState();
    //
    //
    funcPlayTimer();
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(
        250,
        224,
        231,
        1,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.topCenter,
              child: Text("\n"),
            ),
            const Spacer(),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/letter0.png',
                  ),
                  //
                  const SizedBox(
                    width: 10,
                  ),
                  //
                  textWithRegularStyle(
                    'bon',
                    Colors.black,
                    22.0,
                  ),

                  //
                ],
              ),
            ),
            //
            const Spacer(),
            //
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textWithRegularStyle(
                    'obonstore.com - Made in \n',
                    Colors.black,
                    14.0,
                  ),
                  //
                  textWithBoldStyle(
                    ' INDIA ${countryCodeToEmoji("IN")}\n',
                    Colors.black,
                    18.0,
                  ),
                  //
                ],
              ),
            ),
            //
            const SizedBox(
              width: 10,
            ),
            //
          ],
        ),
      ),
    );
  }

  //
  String countryCodeToEmoji(String countryCode) {
    // 0x41 is Letter A
    // 0x1F1E6 is Regional Indicator Symbol Letter A
    // Example :
    // firstLetter U => 20 + 0x1F1E6
    // secondLetter S => 18 + 0x1F1E6
    // See: https://en.wikipedia.org/wiki/Regional_Indicator_Symbol
    final int firstLetter =
        countryCode.toUpperCase().codeUnitAt(0) - 0x41 + 0x1F1E6;
    final int secondLetter =
        countryCode.toUpperCase().codeUnitAt(1) - 0x41 + 0x1F1E6;
    return String.fromCharCode(firstLetter) + String.fromCharCode(secondLetter);
  }

//
//
  //
  funcPlayTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer t) {
        //
        if (t.tick == 2) {
          t.cancel();

          if (kDebugMode) {
            print('object');
          }
          //
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
          //
        }
      },
    );
  }
}
