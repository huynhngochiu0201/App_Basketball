import 'package:app_basketball/components/custom_appbar.dart';
import 'package:app_basketball/components/custom_text.dart';
import 'package:flutter/material.dart';

import '../models/clud_model.dart';

class ClupPage extends StatefulWidget {
  const ClupPage({
    super.key,
    required this.clup,
  });
  final ClupModel clup;

  @override
  State<ClupPage> createState() => _ClupPageState();
}

class _ClupPageState extends State<ClupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftIcon: Icons.arrow_back_ios_new,
        rightIcon: Icons.more_horiz,
        leftOnpressed: () {
          Navigator.pop(context);
        },
        title: widget.clup.name ?? '',
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(top: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(widget.clup.images ?? ''),
                  radius: 60.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                widget.clup.title ?? '',
                style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFF58918)),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                widget.clup.subTitle ?? '',
                style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
                textAlign: TextAlign.center,
                // maxLines: 3,
                // overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "President's Info",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              CustomText(
                name: widget.clup.president!.name ?? '',
                numberphone: widget.clup.president!.numberPhone ?? '',
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Correspondent',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
              CustomText(
                name: widget.clup.correspondent!.name ?? '',
                numberphone: widget.clup.correspondent!.numberPhone ?? '',
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Aple',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
              CustomText(
                name: widget.clup.aple!.name ?? '',
                numberphone: widget.clup.aple!.numberPhone ?? '',
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
