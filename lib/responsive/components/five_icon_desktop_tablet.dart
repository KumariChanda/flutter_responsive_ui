import 'package:flutter/material.dart';

class FiveIconRows extends StatelessWidget {
  const FiveIconRows({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
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
