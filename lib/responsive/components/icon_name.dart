import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';

class IconName extends StatelessWidget {
  const IconName(
      {super.key,
      this.iconName,
      this.iconSize,
      required this.title,
      this.imageName,
      this.subTitle});
  final IconData? iconName;
  final double? iconSize;
  final String? imageName;
  final String title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 15,
          ),
          child: iconName != null
              ? Icon(
                  iconName,
                  size: iconSize,
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    imageName!,
                    height: iconSize,
                    width: iconSize,
                  ),
                ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   width: MediaQuery.of(context).size.width * 0.5,
            //   child:
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            // ),
            if (subTitle != null) ...[
              Text(
                subTitle!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: titleTextColor),
              )
            ]
          ],
        ),
      ],
    );
  }
}
