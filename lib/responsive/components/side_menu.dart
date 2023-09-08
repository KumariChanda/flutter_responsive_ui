import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/components/side_menu_line.dart';
import 'package:xebia_delivery/responsive/components/side_menu_title.dart';

class SideMenu extends StatelessWidget {
  const SideMenu(
      {super.key, required this.title, required this.name, required this.type});
  final String title;
  final String name;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SideMenuLine(),
        SideMenuTtle(
          title: title,
        ),
        ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 15, top: 15, bottom: 5),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(left: 15),
                    child: ClipRRect(
                      borderRadius: type == 'rect'
                          ? BorderRadius.circular(10.0)
                          : BorderRadius.circular(50.0),
                      child: Image.asset('assets/png/HackerRank.png'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
