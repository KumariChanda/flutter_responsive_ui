import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';

class SideMenuNewsEvent extends StatelessWidget {
  const SideMenuNewsEvent(
      {super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 15,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                'assets/png/HackerRank.png',
                height: 30,
                width: 30,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 10,
                  color: titleTextColor,
                ),
              ),
              SizedBox(
                width: 100,
                child: Text(
                  subTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),
          const Spacer(
            flex: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/jgp/background.jpeg',
                fit: BoxFit.cover,
                height: 40,
                width: 60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
