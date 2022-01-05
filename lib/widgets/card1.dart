// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppp/c_color.dart';
import 'package:ppp/models/dynamic_city.dart';

class Card1 extends StatelessWidget {
  // const Card1({Key? key}) : super(key: key);

  final City city;

  // ignore: use_key_in_widget_constructors
  const Card1(this.city);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: const Color(0xFFF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  // 'assets/images/city1.png',
                  city.imageurl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: ColorPalette.primaryColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36),
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.favorite,
                              size: 22,
                              color: ColorPalette.secondaryColor,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              // 'Jakarta',
              city.name,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
