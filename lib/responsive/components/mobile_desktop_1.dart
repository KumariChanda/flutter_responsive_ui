import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';
import 'package:xebia_delivery/responsive/components/profile_name.dart';
import 'package:xebia_delivery/responsive/components/profile_side_1.dart';
import 'package:xebia_delivery/responsive/components/profile_side_2.dart';
import 'package:xebia_delivery/responsive/components/stack_image.dart';

class MobileDesktop1 extends StatelessWidget {
  const MobileDesktop1({
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StackProfileImage(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ProfileName(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileSide2(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: ProfileSide1(
                  type: 'mobile',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
