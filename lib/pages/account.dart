import 'package:flutter/material.dart';

import '../tabs/feedview.dart';
import '../tabs/reelsview.dart';

class UserAccount extends StatelessWidget {
  final List<Widget> tabs = [
    const Tab(
      icon: Icon(
        Icons.image,
        color: Colors.grey,
      ),
    ),
    const Tab(
      icon: Icon(
        Icons.video_collection,
        color: Colors.grey,
      ),
    ),
  ];

  final List<Widget> tabBarViews = [
    const FeedView(),
    const ReelsView(),
  ];
  UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: ListView(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '288',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '230',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Following',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'nexta_rex',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Anime Content',
                style: TextStyle(color: Colors.grey.shade600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade700,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: GestureDetector(
                            child: const Text(
                              'Edit',
                              style: TextStyle(color: Colors.white70),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade700,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: GestureDetector(
                            child: const Text(
                              'Share',
                              style: TextStyle(color: Colors.white70),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade700,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: GestureDetector(
                            child: const Text(
                              'Contact',
                              style: TextStyle(color: Colors.white70),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TabBar(
                tabs: tabs,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[700],
                ),
              ),
              const Padding(padding: EdgeInsets.all(8)),
              SizedBox(height: 500, child: TabBarView(children: tabBarViews)),
            ],
          ),
        ));
  }
}
