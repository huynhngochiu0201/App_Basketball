import 'package:app_basketball/models/category_model.dart';
import 'package:app_basketball/models/clud_model.dart';
import 'package:app_basketball/models/coach_model.dart';
import 'package:app_basketball/pages/clup_page.dart';
import 'package:flutter/material.dart';

import 'home_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  void initState() {
    categories.insert(0, CategoryModel()..title = 'All');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int categoryIndex = 0;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const AppbarHome(),
      body: ListView(
        padding:
            const EdgeInsets.symmetric(horizontal: 16.0).copyWith(top: 25.0),
        children: [
          const Text(
            'My Club',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          const SizedBox(height: 8.0),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ClupPage(clup: fakeClub),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFFFD78F),
                      Color(0xFFFFBE60),
                      Color(0xFFEF8D43),
                      Color(0xFFEE6F25),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(4)),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(fakeClub.images ?? ''),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            fakeClub.name ?? '',
                            style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w100,
                                color: Colors.black),
                          ),
                          Row(
                            children: [
                              CustomColum(
                                count: fakeClub.coachs ?? 0,
                                title: 'Coachs',
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Container(
                                  width: 0.5,
                                  height: 28.0,
                                  color: Colors.black,
                                ),
                              ),
                              CustomColum(
                                count: fakeClub.teams ?? 0,
                                title: 'teams',
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Container(
                                  width: 0.5,
                                  height: 28.0,
                                  color: Colors.black,
                                ),
                              ),
                              CustomColum(
                                count: fakeClub.players ?? 0,
                                title: 'players',
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    fakeClub.description ?? '',
                    style: const TextStyle(
                        fontSize: 14.0, fontWeight: FontWeight.w400),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 12.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(
                          color: const Color(0xFFF05523),
                          borderRadius: BorderRadius.circular(4.0)),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(1.68),
                              child: Icon(
                                Icons.person_add,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 4.0),
                            Text(
                              'INVITE',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          const Text(
            'Coaches',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
          const SizedBox(height: 8.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  categories.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        categoryIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          gradient: categoryIndex == index
                              ? const LinearGradient(
                                  colors: [
                                    Color(0xFFFFD78F),
                                    Color(0xFFFFBE60),
                                    Color(0xFFEF8D43),
                                    Color(0xFFEE6F25),
                                  ],
                                )
                              : LinearGradient(colors: [
                                  Colors.white.withOpacity(0.1),
                                  Colors.white.withOpacity(0.1)
                                ])),
                      margin: const EdgeInsets.only(right: 12.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 2),
                      child: Text(
                        categories[index].title ?? '',
                        style: TextStyle(
                            color: categoryIndex == index
                                ? Colors.white
                                : const Color(0xffA1A1A1)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          GestureDetector(
            onTap: () {},
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white.withOpacity(0.1)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage(coaches[index].image ?? ''),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '${coaches[index].name ?? ''}\n',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA1A1A1),
                            ),
                          ),
                          TextSpan(
                            text: coaches[index]
                                .skills
                                ?.map((e) => e)
                                .toList()
                                .join(', '),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 12.0),
              itemCount: coaches.length,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomColum extends StatelessWidget {
  const CustomColum({
    super.key,
    required this.count,
    required this.title,
  });
  final int count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$count',
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
///2h 39p phuts