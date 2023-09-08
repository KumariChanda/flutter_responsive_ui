import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xebia_delivery/gen/assets.gen.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';
import 'package:xebia_delivery/responsive/components/five_icon_desktop_tablet.dart';
import 'package:xebia_delivery/responsive/components/full_body.dart';
import 'package:xebia_delivery/responsive/components/full_side_menu.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: SvgPicture.asset(Assets.svgs.logo),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: secondBg,
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(Icons.search_outlined),
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          const FiveIconRows(),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor2,
              ),
              child: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
                size: 15,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.apps,
              color: Colors.black,
            ),
          ),
        ],
      ),
      endDrawer: const Drawer(backgroundColor: primaryColor, child: Text('')),
      body: const SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 8,
              child: FullBody(
                type: 'desktop',
              ),
            ),
            Expanded(
              flex: 2,
              child: FullSideMenu(),
            ),
          ],
        ),
      ),
    );
  }
}
