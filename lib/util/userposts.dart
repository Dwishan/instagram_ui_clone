import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;

  const UserPosts({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
              Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[700],
        ),
        const Padding(
          padding: EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Icon(
                      Icons.chat_bubble_outline_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ],
              ),
              Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text(
                'Liked by ',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Zoro ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'and ',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'others',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: RichText(
                text:
                    TextSpan(style: TextStyle(color: Colors.white), children: [
              TextSpan(
                  text: name,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const TextSpan(
                  text:
                      ' I dont wanna conquer anything. Its just that the person with the most freedom on the sea is the Pirate King.'),
            ]))),
      ],
    );
  }
}
