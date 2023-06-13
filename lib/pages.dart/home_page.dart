import 'package:flutter/material.dart';

import '../data_source.dart';
import '../widgets/my_title.dart';
import '../widgets/nobel_card.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  List<Map?>? nobelData = NobelDatasource.winners;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back_rounded,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.bento_rounded,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTitle(
              text: "Nobel Prize Winners",
              color: Colors.black,
            ),
            Expanded(
              flex: 12,
              child: Container(
                child: GridView.builder(
                  itemCount: nobelData!.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 4 / 3,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                  ),
                  itemBuilder: (context, index) => NobelCard(
                    name: "${nobelData![index]!["firstname"]![0]}",
                    badges: ["badge1", "badge2"],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
