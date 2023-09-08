import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';
import 'package:xebia_delivery/responsive/components/icon_name.dart';
import 'package:xebia_delivery/responsive/components/left_right_title.dart';

class DesktopTop2 extends StatelessWidget {
  const DesktopTop2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15),
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: secondBg,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0, top: 10),
            child: LeftRghtTitle(
              primaryTitle: 'People who follow Helena also follow',
              secondaryTitle: 'See all',
            ),
          ),
          SizedBox(
            height: 130,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 15,
                    bottom: 5,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                            top: 15,
                          ),
                          child: IconName(
                            imageName: 'assets/png/HackerRank.png',
                            title: 'Texas Southern University',
                            subTitle:
                                'Web, eCommerce, Apps Developer | Software Engineer',
                            iconSize: 50,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          width: 300,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: headerColor,
                              foregroundColor: secondBg,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            child: const Text(
                              'Follow',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
