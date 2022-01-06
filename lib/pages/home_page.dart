import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppp/c_color.dart';
import 'package:ppp/models/dynamic_city.dart';
import 'package:ppp/models/dynamic_space.dart';
import 'package:ppp/widgets/card1.dart';
import 'package:ppp/widgets/space_card.dart';
import 'package:ppp/widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
          child: ListView(
            // Noted : Title/Head
            children: [
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Explore Now',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Cari Rumah Impianmu sekarang',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: ColorPalette.greyColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // Note : Popular Cities
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Popular Cities',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    Card1(
                      City(
                        id: 1,
                        name: 'jakarta',
                        imageurl: 'assets/images/city1.png',
                        isPopular: true,
                      ),
                    ), // card 1
                    const SizedBox(
                      width: 20,
                    ),
                    Card1(
                      City(
                          id: 2,
                          name: 'Bandung',
                          imageurl: 'assets/images/city2.png'),
                    ), // card 1), // card 2
                    const SizedBox(
                      width: 20,
                    ),
                    Card1(
                      City(
                          id: 3,
                          name: 'Bali',
                          imageurl: 'assets/images/city3.png'),
                    ), // card 1), // card 3
                  ],
                ),
              ),
              // Noted : Recomended Space --
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Recommended Home',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      // color: ColorPalette.greyColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                ),
                child: Column(
                  children: [
                    Spacecard(
                      Space(
                        id: 1,
                        name: 'Yamai Hoase',
                        imageurlUrl: 'assets/images/space1.png',
                        price: 130,
                        city: 'Oasee',
                        country: 'Denmark',
                        rating: 4,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Spacecard(
                      Space(
                        id: 2,
                        name: 'Antasena Cour',
                        imageurlUrl: 'assets/images/space2.png',
                        price: 240,
                        city: 'Jimbaran',
                        country: 'Bali',
                        rating: 4,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Spacecard(
                      Space(
                        id: 3,
                        name: 'Komisan Home',
                        imageurlUrl: 'assets/images/space3.png',
                        price: 110,
                        city: 'Tokinawa',
                        country: 'Japanese',
                        rating: 5,
                      ),
                    ),
                  ],
                ),
              ),
              // Note Guidance
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Tips And Guidance',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      // color: ColorPalette.greyColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                ),
                child: Column(
                  children: const [
                    TipsCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
