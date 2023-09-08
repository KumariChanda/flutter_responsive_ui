import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';

class ShortIconFooter extends StatelessWidget {
  const ShortIconFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.dashboard,
            color: Colors.black,
          ),
          Icon(
            Icons.message,
            color: Colors.black,
          ),
          Icon(
            Icons.add_box,
            color: Colors.black,
          ),
          Icon(
            Icons.assistant_navigation,
            color: Colors.black,
          ),
          Icon(
            Icons.favorite,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
