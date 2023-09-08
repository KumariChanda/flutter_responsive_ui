import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';

class ProfileSide1 extends StatelessWidget {
  const ProfileSide1({super.key, this.type});
  final String? type;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 100.0, top: 5, bottom: 10),
          child: Text(
            'Transitioning into the wonderful world of technology, I am thrilled to embark on this new journey as a Software Engineer. Stepping into this domain with an inquisitive mindset as I conjoin my decade-plus experiences from fashion, beauty and production industries. ',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 14,
              color: titleTextColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 15),
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
            SizedBox(
              width: type != null && type == 'mobile'
                  ? MediaQuery.of(context).size.width * 0.6
                  : MediaQuery.of(context).size.width * 0.4,
              height: 30,
              child: RichText(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                text: const TextSpan(
                  text: '2 mutual connections: ',
                  style: TextStyle(fontSize: 12, color: titleTextColor),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Alex Merced',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                    ),
                    TextSpan(
                      text: 'Michele A. Griggs',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
          ),
          child: Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Message',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.lock,
                      size: 12,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'More  ...',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
