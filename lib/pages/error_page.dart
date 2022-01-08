// import 'dart:html';

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:ppp/c_color.dart';
// import 'package:ppp/pages/splash_screen.dart';

class Errorpage extends StatelessWidget {
  const Errorpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/illustrations/404.png',
                width: 300,
              ),
              const SizedBox(
                height: 70,
              ),
              const Text(
                'What The Hell You Doing Homie',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                'Seems like the page that you were\n requested is already gone',
                style: TextStyle(
                  color: ColorPalette.greyColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                width: 210,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const Splashscreen(),
                    //   ),
                    // );
                  },
                  color: ColorPalette.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: const Text(
                    'Back To Home',
                    style:
                        TextStyle(color: ColorPalette.whiteColor, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
