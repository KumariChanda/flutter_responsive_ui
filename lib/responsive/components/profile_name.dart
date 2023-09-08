import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Helena Christensen',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: RichText(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                text: const TextSpan(
                  text: 'Co-founder ',
                  style: TextStyle(fontSize: 12, color: titleTextColor),
                  children: <TextSpan>[
                    TextSpan(
                      text: '@Startup',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: ', 2021 Forbes 30 Under 30 in Life & Style',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Center(
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
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    size: 12,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Follow',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
