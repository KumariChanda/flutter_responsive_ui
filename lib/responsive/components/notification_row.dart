import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/colors_applied.dart';

class NotificationRow extends StatelessWidget {
  const NotificationRow({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 25,
        left: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 10,
              color: titleTextColor,
            ),
          ),
          const Switch(
            value: true, 
            onChanged: null,
          ),
        ],
      ),
    );
  }
}
