import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppp/c_color.dart';
import 'package:ppp/models/dynamic_space.dart';
import 'package:ppp/pages/detail_page.dart';
// import 'package:ppp/models/dynamic_space.dart';
// import 'package:ppp/models/dynamic_city.dart';

class Spacecard extends StatelessWidget {
  // const Spacecard({Key? key}) : super(key: key);
  final Space space;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  const Spacecard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailPage(),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            // ignore: sized_box_for_whitespace
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(
                    space.imageurlUrl,
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
                              '${space.rating}/5',
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
                space.name,
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
                  text: '\$${space.price}',
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
                '${space.city}, ${space.country}',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: ColorPalette.greyColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
