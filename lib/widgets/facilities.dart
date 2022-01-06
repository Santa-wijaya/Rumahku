import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppp/c_color.dart';

class Facility extends StatelessWidget {
  // const Facility({Key? key}) : super(key: key);

  final String name;
  final String imageUrl;
  final int total;

  // ignore: use_key_in_widget_constructors
  const Facility(
      {required this.name, required this.imageUrl, required this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        const SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: '$total',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: ColorPalette.primaryColor,
              ),
            ),
            children: [
              TextSpan(
                text: ' $name',
                style: const TextStyle(
                  color: ColorPalette.greyColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
