import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/components/icon_name.dart';

class ProfileSide2 extends StatelessWidget {
  const ProfileSide2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconName(
          iconName: Icons.circle,
          title: 'Texas Southern University',
          iconSize: 40,
        ),
        IconName(
          iconName: Icons.rectangle_rounded,
          title: 'University of Niagara at Urbana Champaign',
          iconSize: 40,
        ),
        IconName(
          iconName: Icons.train_rounded,
          title: 'Maine Township Hich School 207D',
          iconSize: 40,
        ),
      ],
    );
  }
}
