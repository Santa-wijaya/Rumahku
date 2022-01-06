import 'package:flutter/material.dart';
import 'package:ppp/c_color.dart';

class BottomNavbar extends StatelessWidget {
  // const BottomNavbar({Key? key}) : super(key: key);

  final String imageUrl;
  final bool isAct;

  // ignore: use_key_in_widget_constructors
  const BottomNavbar({required this.imageUrl, required this.isAct});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
        ),
        const Spacer(),
        isAct
            ? Container(
                width: 30,
                height: 2,
                decoration: const BoxDecoration(
                  color: ColorPalette.primaryColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(1000),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
