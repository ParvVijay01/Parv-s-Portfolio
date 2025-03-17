import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 600),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Image
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  CustomColor.scaffoldBg.withAlpha(153),
                  CustomColor.scaffoldBg.withAlpha(153),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset("assets/images/hero1.png", width: screenWidth),
          ),
          SizedBox(height: 10),
          Text(
            "Hi, \nI'm Parv Vijayvargiya\nA Flutter Developer",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
              height: 1.5,
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            width: 190,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.yellowPrimary,
              ),
              onPressed: () {},
              child: Text(
                "Get in touch",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          //Intro
        ],
      ),
    );
  }
}
