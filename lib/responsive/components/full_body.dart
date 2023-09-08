import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/components/desktop_top_1.dart';
import 'package:xebia_delivery/responsive/components/desktop_top_2.dart';
import 'package:xebia_delivery/responsive/components/desktop_top_3.dart';
import 'package:xebia_delivery/responsive/components/desktop_top_4.dart';
import 'package:xebia_delivery/responsive/components/mobile_desktop_1.dart';
import 'package:xebia_delivery/responsive/components/mobile_desktop_4.dart';

class FullBody extends StatelessWidget {
  const FullBody({super.key, required this.type});

  final String? type;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        type != null && type == 'mobile'
            ? const MobileDesktop1()
            : const DesktopTop1(),
        const DesktopTop2(),
        const DesktopTop3(),
        type != null && type == 'mobile'
            ? const MobileDesktop4()
            : const DesktopTop4(),
      ],
    );
  }
}
