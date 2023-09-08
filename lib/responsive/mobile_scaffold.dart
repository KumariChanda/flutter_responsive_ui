import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xebia_delivery/gen/assets.gen.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';
import 'package:xebia_delivery/responsive/components/full_body.dart';
import 'package:xebia_delivery/responsive/components/full_side_menu.dart';

class MobileScaffold extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  MobileScaffold({super.key});

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
          const Spacer(
            flex: 2,
          ),
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
                  shape: BoxShape.circle, color: primaryColor2),
              child: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
                size: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
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
        child: Expanded(
          child: ListView(
            children: const <Widget>[
              FullBody(
                type: 'mobile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
