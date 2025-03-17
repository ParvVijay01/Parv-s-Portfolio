import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/headers/header_desktop.dart';
import 'package:portfolio/widgets/headers/header_mobile.dart';
import 'package:portfolio/widgets/main/main_desktop.dart';
import 'package:portfolio/widgets/main/main_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer:
              constraints.maxWidth >= kMinDesktopWidth ? null : DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // MAIN
              if (constraints.maxWidth >= kMinDesktopWidth)
                HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              if (constraints.maxWidth >= kMinDesktopWidth)
                MainDesktop()
              else
                MainMobile(),
              // SKILLS
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              // PROJECTS
              SizedBox(height: 500, width: double.maxFinite),
              // CONTACT
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              // FOOTER
              SizedBox(height: 500, width: double.maxFinite),
            ],
          ),
        );
      },
    );
  }
}
