import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppp/c_color.dart';
// import 'package:ppp/models/dynamic_city.dart';

class Spacecard extends StatelessWidget {
  const Spacecard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            width: 130,
            height: 110,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/space1.png',
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: ColorPalette.primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.favorite,
                            size: 22,
                            color: ColorPalette.secondaryColor,
                          ),
                          Text(
                            '4/5',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 13,
                              color: ColorPalette.whiteColor,
                              fontWeight: FontWeight.w500,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Yamai House',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text.rich(
              TextSpan(
                text: '\$52',
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
            const SizedBox(
              height: 16,
            ),
            Text(
              'Jimbaran, Bali',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: ColorPalette.greyColor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
