import 'package:flutter/material.dart';

class SideMenuLine extends StatelessWidget {
  const SideMenuLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
      child: Container(
        height: 1.5,
        decoration: BoxDecoration(
          color: const Color(0xFFE2E8F0),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}