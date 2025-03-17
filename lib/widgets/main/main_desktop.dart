import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi, \nI'm Parv Vijayvargiya\nA Flutter Developer",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: 250,
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
            ],
          ),
          Image.asset("assets/images/hero1.png", width: screenWidth / 2.5),
        ],
      ),
    );
  }
}
