import 'package:flutter/material.dart';

import '../pages.dart/details_page.dart';
import 'nobel_badge.dart';

class NobelCard extends StatelessWidget {
  final String name;
  final List<String> badges;
  NobelCard({
    super.key,
    required this.name,
    required this.badges,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailsPage(),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.redAccent,
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '$name',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  NobelBadge(text: "${badges[0]}"),
                  NobelBadge(text: "${badges[1]}"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
