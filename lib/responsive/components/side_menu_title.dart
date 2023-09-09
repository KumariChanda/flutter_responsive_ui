import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';

class SideMenuTtle extends StatelessWidget {
  const SideMenuTtle({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: titleTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
