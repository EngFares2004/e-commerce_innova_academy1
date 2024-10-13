import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color titleColor;
  final Color backgroundColor;
  final Color iconColor;
  final bool showNotificationIcon;

  const CustomAppBar({super.key,
    required this.title,
    this.titleColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.black,
    this.showNotificationIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(color: titleColor),
      ),
      actions: [
        if (showNotificationIcon) _buildNotificationIcon(),
        if (title=='Detail Product') _buildSharedIcon(),

        _buildCartIcon(),
      ],
      elevation: 5,
    );
  }

  Widget _buildNotificationIcon() {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_outlined),
        ),
        Positioned(
          left: 20,
          top: 10,
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCartIcon() {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.cart, color: iconColor),
        ),
        Positioned(
          left: 25,
          top: 10,
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
  Widget _buildSharedIcon() {
    return
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.reply_all_outlined, color: iconColor),
        );


  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
