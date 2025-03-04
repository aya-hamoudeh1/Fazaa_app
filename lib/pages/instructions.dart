import 'package:flutter/material.dart';

import '../constants.dart';
import '../tab_item_instructions.dart';

class Instructions extends StatelessWidget {
  const Instructions({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: const Text(
            "الارشادات",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: kPrimaryColor,
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: const [
                   // TabItemInstructions(title: "الكل", count: 33),
                    TabItemInstructions(title: "الزلازل", count: 8),
                    TabItemInstructions(title: "الحرائق", count: 8),
                    TabItemInstructions(title: " كورونا", count: 9),
                    TabItemInstructions(title: "تسرب", count: 10,)
                  ],
                ),
              ),
            ),
          ),
        ),
        body:  TabBarView(
          children: [
            Column(
              children: [
                Image.asset("assets/images/earthquake/N5.jpg",
                  height: 200,
                  width: double.infinity,
                ),
                Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(8),
                            alignment: Alignment.center,
                            height: 100,
                            color: kPrimaryColor,
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              earthquake[index],
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          );
                        },
                    ),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset("assets/images/earthquake/N1.jpg",
                  height: 200,
                  width: double.infinity,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        height: 100,
                        color: kPrimaryColor,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          fire[index],
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset("assets/images/COVID19/boy wearing mask.jpg",
                  height: 200,
                  width: double.infinity,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 11,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        height: 100,
                        color: kPrimaryColor,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          corona[index],
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset("assets/images/oil_spill/Rusty oil barrel in sunset.jpg",
                  height: 200,
                  width: double.infinity,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        height: 100,
                        color: kPrimaryColor,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          oilSpill[index],
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      );
                    },
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
