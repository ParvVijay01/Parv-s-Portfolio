import 'package:flutter/material.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onMenuTap, this.onLogoTap});
  final VoidCallback? onMenuTap;
  final VoidCallback? onLogoTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: onLogoTap),
          Spacer(),
          IconButton(onPressed: onMenuTap, icon: Icon(Icons.menu)),
        ],
      ),
    );
  }
}
