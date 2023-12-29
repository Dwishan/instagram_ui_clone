import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../util/shopgrid.dart';

class UserLikes extends StatelessWidget {
  const UserLikes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shop'),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.calendar_today),
                ),
                Icon(Icons.menu),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey[700],
                child: Row(
                  children: [
                    Icon(
                      Icons.shop,
                      color: Colors.grey[500],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Shop',
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(child: ShopGrid()),
        ],
      ),
    );
  }
}
