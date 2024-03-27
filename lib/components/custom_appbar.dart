import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.leftIcon,
      required this.rightIcon,
      required this.title,
      this.leftOnpressed,
      this.rightOnpressed});
  final IconData leftIcon;
  final IconData rightIcon;
  final String title;
  final VoidCallback? leftOnpressed;
  final VoidCallback? rightOnpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(top: 22.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftOnpressed,
            // () {
            //   Navigator.pop(context);
            // },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Colors.white.withOpacity(0.1)),
              child: Icon(
                leftIcon,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w400),
          ),
          GestureDetector(
            onTap: rightOnpressed,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),
              child: Icon(
                rightIcon,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(66.0);
}
