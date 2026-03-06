import 'package:flutter/material.dart';
import 'package:mini_project/app_routes.dart';
import 'package:mini_project/widgets/app_drawer_item.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(18)),
      ),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 10, 18),
              child: Row(
                children: <Widget>[
                  const CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=200',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          userName,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '${userName.toLowerCase().replaceAll(' ', '.')}@email.com',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            const SizedBox(height: 12),
            const AppDrawerItem(icon: Icons.home_outlined, title: 'Dashboard'),
            const AppDrawerItem(
              icon: Icons.grid_view_outlined,
              title: 'New collections',
            ),
            const AppDrawerItem(
              icon: Icons.chat_bubble_outline,
              title: 'Comments',
            ),
            const AppDrawerItem(
              icon: Icons.calendar_today_outlined,
              title: 'Calendar',
            ),
            const AppDrawerItem(icon: Icons.star_border, title: "Editor's picks"),
            const Spacer(),
            const Divider(height: 1),
            AppDrawerItem(
              icon: Icons.settings_outlined,
              title: 'Settings',
              onTap: () => Navigator.pop(context),
            ),
            const SizedBox(height: 8),
            AppDrawerItem(
              icon: Icons.logout_outlined,
              title: 'Logout',
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.login,
                  (Route<dynamic> route) => false,
                );
              },
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
