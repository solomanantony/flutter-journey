import 'package:flutter/material.dart';

class AppDrawerItem extends StatelessWidget {
  const AppDrawerItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap ?? () => Navigator.pop(context),
    );
  }
}
