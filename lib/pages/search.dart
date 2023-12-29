import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../util/exploregrid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey[700],
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: ExploreGrid(),
    );
  }
}
