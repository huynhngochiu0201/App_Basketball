import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.name,
    required this.numberphone,
  });
  final String name;
  final String numberphone;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(4)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Full name',
          style: TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.grey),
        ),
        Text(
          name,
          style: const TextStyle(
              color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16.0,
        ),
        const Text(
          'Number Phone',
          style: TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.grey),
        ),
        Text(
          numberphone,
          style: const TextStyle(
              color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16.0,
        )
      ]),
    );
  }
}
