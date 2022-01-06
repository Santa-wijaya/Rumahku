// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppp/c_color.dart';
// import 'package:ppp/models/dynamic_space.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/thumbnail.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/essentials/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/essentials/btn_love.png',
                    width: 40,
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: ColorPalette.whiteColor,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Yamai Hoase',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  )),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '\$130',
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: ColorPalette.primaryColor,
                                      ),
                                    ),
                                    children: const [
                                      TextSpan(
                                        text: ' / Month',
                                        style: TextStyle(
                                          color: ColorPalette.greyColor,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/icon_star.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/icons/icon_star.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/icons/icon_star.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/icons/icon_star.png',
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/icons/icon_star.png',
                                  width: 20,
                                  color: ColorPalette.greyColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
