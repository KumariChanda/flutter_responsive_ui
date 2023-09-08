import 'package:flutter/material.dart';
import 'package:xebia_delivery/project_theme/project_theme.dart';
import 'package:xebia_delivery/responsive/desktop_scaffold.dart';
import 'package:xebia_delivery/responsive/mobile_scaffold.dart';
import 'package:xebia_delivery/responsive/responsive_layout.dart';
import 'package:xebia_delivery/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.projectLightTheme,
      darkTheme: AppTheme.projectDarkTheme,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: const DesktopScaffold(),
      ),
    );
  }
}
