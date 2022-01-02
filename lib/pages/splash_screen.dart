import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              )
            ],
          ),
        ),
      ),
    );
  }
}
