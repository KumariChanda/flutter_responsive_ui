import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';

class LeftRghtTitle extends StatelessWidget {
  const LeftRghtTitle(
      {super.key, required this.primaryTitle, required this.secondaryTitle});
  final String primaryTitle;
  final String secondaryTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                primaryTitle,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                secondaryTitle,
                style: const TextStyle(
                  color: headerColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
