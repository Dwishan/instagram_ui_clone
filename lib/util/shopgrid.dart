import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  const ShopGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 99,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                color: Colors.grey[700],
              ),
            ),
          );
        });
  }
}
