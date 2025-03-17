import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          "PVV",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: CustomColor.yellowSecondary,
          ),
        ),
      ),
    );
  }
}
