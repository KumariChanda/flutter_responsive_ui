import 'package:flutter/material.dart';
import 'package:xebia_delivery/responsive/components/notification_row.dart';
import 'package:xebia_delivery/responsive/components/side_menu.dart';
import 'package:xebia_delivery/responsive/components/side_menu_line.dart';
import 'package:xebia_delivery/responsive/components/side_menu_news.dart';
import 'package:xebia_delivery/responsive/components/side_menu_title.dart';

class FullSideMenu extends StatelessWidget {
  const FullSideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> notificationList = [
      'Company Announcements',
      'Conferences & Events'
    ];
    return Column(
      children: [
        const SideMenu(
          title: 'Top Communities',
          name: 'HackerRank',
          type: 'rect',
        ),
        const SideMenu(
          title: 'Suggested People',
          name: 'Patrick Loeber',
          type: 'circle',
        ),
        Column(
          children: [
            const SideMenuLine(),
            const SideMenuTtle(
              title: 'Nearby Events',
            ),
            const SideMenuNewsEvent(
              title: 'Newsletter ∙ Daily',
              subTitle: 'Helena Bordem',
            ),
            const SideMenuNewsEvent(
              title: 'Tim Mossholder',
              subTitle: 'Fireside Chat with Ester Dyson',
            ),
            const SideMenuLine(),
            const SideMenuTtle(
              title: 'Notifications',
            ),
            ListView.builder(
              itemCount: notificationList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return NotificationRow(
                  name: notificationList[index],
                );
              },
            ),
          ],
        )
      ],
    );
  }
}
