import 'package:flutter/material.dart';
import 'package:nobel_prize/widgets/my_title.dart';
import 'package:nobel_prize/widgets/nobel_badge.dart';

import '../widgets/featuret_title_text.dart';
import '../widgets/featuret_value_text.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyTitle(
                            text: "Winners Name",
                            color: Colors.black,
                          ),
                          Row(
                            children: [
                              NobelBadge(text: "2021"),
                              NobelBadge(text: "chemistry"),
                            ],
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 200.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(36.0),
                        topLeft: Radius.circular(36.0),
                      ),
                      color: Colors.blueGrey,
                    ),
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 700.0,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: double.infinity,
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 60.0),
                                      child: Column(
                                        children: [
                                          FeatureTitleText(text: "Surname"),
                                          FeatureTitleText(text: "Motivation"),
                                          FeatureTitleText(text: "Share"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(top: 60.0),
                                    height: double.infinity,
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FeatureValueText(text: "List"),
                                        FeatureValueText(
                                            text:
                                                "For the development of asymmetric organocatalysis"),
                                        FeatureValueText(text: "2"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
