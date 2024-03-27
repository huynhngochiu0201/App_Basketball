import 'package:flutter/material.dart';

import '../models/user_model.dart';

class AppbarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(top: 22),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(user1.avatar ?? ''),
          ),
          const SizedBox(width: 10.0),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: 'Welcome  \n',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xffA1A1A1),
                      fontWeight: FontWeight.w400),
                ),
                TextSpan(
                  text: user1.name ?? '',
                  style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.10),
            ),
            child: const Icon(
              Icons.search,
              color: Color(0xffA1A1A1),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(72);
}
