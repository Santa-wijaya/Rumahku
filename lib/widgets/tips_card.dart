import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ppp/c_color.dart';
import 'package:ppp/models/dynamic_guidance.dart';

class TipsCard extends StatelessWidget {
  // const TipsCard({Key? key}) : super(key: key);

  final Tips tips;

  // ignore: use_key_in_widget_constructors
  const TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              tips.updateAt,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: ColorPalette.greyColor,
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_right),
          color: ColorPalette.greyColor,
        ),
      ],
    );
  }
}
