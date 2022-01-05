// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppp/c_color.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo/main_logo.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Find Cozy House\nto Stay and Happy',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: ColorPalette.greyColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                width: 210,
                height: 50,
                child: RaisedButton(
                  onPressed: () {},
                  color: ColorPalette.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Text(
                    'Explore Now',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: ColorPalette.whiteColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
