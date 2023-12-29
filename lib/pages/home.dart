import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/search.dart';
import 'package:instagram_clone/util/bubblestories.dart';
import 'package:instagram_clone/util/userposts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Luffy',
    'Naruto',
    'Ichigo',
    'Zoro',
    'Madara',
    'Obito',
    'Grimjaw',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Instagram',
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(FadeRoute(page: UserSearch()));
                      },
                      icon: Icon(
                        Icons.message,
                      )),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(
                    text: people[index],
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return UserPosts(name: people[index]);
                  }),
            )
          ],
        ));
  }
}

class ScaleRotateRoute extends PageRouteBuilder {
  final Widget pagee;
  ScaleRotateRoute({required this.pagee})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              pagee,
          transitionDuration: Duration(seconds: 1),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              ScaleTransition(
            scale: Tween<double>(
              begin: 0.0,
              end: 1.0,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.fastOutSlowIn,
              ),
            ),
            child: RotationTransition(
              turns: Tween<double>(
                begin: 0.0,
                end: 1.0,
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.linear,
                ),
              ),
              child: child,
            ),
          ),
        );
}

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
