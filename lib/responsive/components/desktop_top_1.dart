import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';
import 'package:xebia_delivery/responsive/components/profile_name.dart';
import 'package:xebia_delivery/responsive/components/profile_side_1.dart';
import 'package:xebia_delivery/responsive/components/profile_side_2.dart';
import 'package:xebia_delivery/responsive/components/stack_image.dart';

class DesktopTop1 extends StatelessWidget {
  const DesktopTop1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: secondBg,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StackProfileImage(),
         
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ProfileName(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: ProfileSide1(),
                ),
                Expanded(
                  flex: 4,
                  child: ProfileSide2(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
