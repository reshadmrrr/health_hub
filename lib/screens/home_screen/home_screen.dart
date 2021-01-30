import 'package:flutter/material.dart';
import 'package:health_hub/screens/home_screen/local_widgets/feed_card.dart';
import 'package:health_hub/utils/colors.dart';

import 'local_widgets/dash_card.dart';

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 8.0),
        child: ListView(
          children: [
            MyDashCard(),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 4.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Categorized\nNews Feed",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(color: MyColor.blackPrimary),
                      ),
                      MyFeedCard(
                        title: "Innovation",
                      ),
                      MyFeedCard(
                        title: "Tech",
                      ),
                    ],
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    children: [
                      MyFeedCard(
                        title: "COVID-19",
                      ),
                      MyFeedCard(
                        title: "Knowledge",
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
