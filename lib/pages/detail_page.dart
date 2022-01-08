// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppp/c_color.dart';
// import 'package:ppp/pages/error_page.dart';
import 'package:ppp/widgets/facilities.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:path/path.dart';

// import 'package:ppp/models/dynamic_space.dart';

// ignore: use_key_in_widget_constructors
class DetailPage extends StatelessWidget {
  // const DetailPage({Key? key}) : super(key: key);

  launchUrl(String url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      throw (url);
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const Errorpage(),
      //   ),
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.whiteColor,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      //Title Start
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
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icons/icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icons/icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icons/icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
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
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Main Facilities',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Facility(
                              name: 'Kitchen',
                              imageUrl: 'assets/icons/icon_bar.png',
                              total: 2,
                            ),
                            Facility(
                              name: 'Beds',
                              imageUrl: 'assets/icons/icon_bed.png',
                              total: 2,
                            ),
                            Facility(
                              name: 'bathroom',
                              imageUrl: 'assets/icons/icon_lemari.png',
                              total: 2,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Photo',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SizedBox(
                              width: 24,
                            ),
                            Image.asset(
                              'assets/images/photo1.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/images/photo2.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/images/photo3.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Location',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jl. Binaria, Anturan, Lovina,\nKabupaten Buleleng, Bali 81152',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: ColorPalette.greyColor,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                launchUrl('www.google.com');
                              },
                              child: Image.asset(
                                'assets/essentials/btn_maps.png',
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: RaisedButton(
                          onPressed: () {
                            launchUrl('tel:+6281338298898');
                          },
                          color: ColorPalette.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Text(
                            'Book Now',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 18,
                              color: ColorPalette.whiteColor,
                              fontWeight: FontWeight.w500,
                            )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
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
          ],
        ),
      ),
    );
  }
}
