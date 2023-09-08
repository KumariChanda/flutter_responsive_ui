import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';
import 'package:xebia_delivery/responsive/components/left_right_title.dart';

class DesktopTop4 extends StatelessWidget {
  const DesktopTop4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: secondBg,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
            child: LeftRghtTitle(
              primaryTitle: 'People people you may know',
              secondaryTitle: 'See all',
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 250,
                        height: 80,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(
                              10.0,
                            ),
                            topRight: Radius.circular(
                              10.0,
                            ),
                          ),
                          child: Image.asset(
                            'assets/jgp/background.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Geoffrey Moore',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Wildcat Venture Partners',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: titleTextColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, bottom: 15, top: 20),
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 30,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    alignment: Alignment.bottomLeft,
                                    child: SizedBox(
                                      height: 25,
                                      width: 25,
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(50.0),
                                        ),
                                        child: Image.asset(
                                          'assets/jgp/background.jpeg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  child: SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(50.0),
                                      ),
                                      child: Image.asset(
                                        'assets/png/HackerRank.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        '3 mutual connections',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: titleTextColor,
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
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
                          child: const Text(
                            'Connect',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
