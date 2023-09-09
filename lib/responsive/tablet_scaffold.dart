import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xebia_delivery/gen/assets.gen.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';
import 'package:xebia_delivery/responsive/components/five_icon_desktop_tablet.dart';
import 'package:xebia_delivery/responsive/components/full_body.dart';
import 'package:xebia_delivery/responsive/components/full_side_menu.dart';

class TabletScaffold extends StatelessWidget {
  TabletScaffold({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
                  fillColor: const Color(0xFFF4F4F4),
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
          const SizedBox(
            width: 30,
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
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: _openEndDrawer,
              child: const Icon(
                Icons.apps,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: primaryColor,
        child: ListView(
          children: const [
            FullSideMenu(),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: const <Widget>[
                  FullBody(
                    type: 'tablet',
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
