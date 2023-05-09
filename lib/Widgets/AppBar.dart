import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool menuenabled;
  final bool notificationenabled;
  final VoidCallback ontap;
  const CommonAppBar({
    Key? key,
    required this.title,
    required this.menuenabled,
    required this.notificationenabled,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: menuenabled == true
          ? IconButton(
              color: Colors.black,
              onPressed: ontap,
              icon: const Icon(
                Icons.menu,
              ),
            )
          : null,
      actions: [
        notificationenabled == true
            ? InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/notification.png",
                  width: 35,
                ),
              )
            : const SizedBox(
                width: 1,
              ),
      ],
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
