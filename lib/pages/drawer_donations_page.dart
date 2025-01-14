import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../constants.dart';
import '../models/my_card.dart';

class DrawerDonationsPage extends StatelessWidget {
  const DrawerDonationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("donation").snapshots(),
          builder: (context, snapshot) {
            List<Row> donationWidgets = [];
            if (snapshot.hasData) {
              final donations = snapshot.data?.docs.reversed.toList();
              for (var donation in donations!) {
                final donationWidget = Row(
                  children: [
                    // Text(donation["name"]),
                    // Text(donation["email"]),
                    // Text(donation["skills"])
                    MyCard(
                      name: donation["name"],
                      phone: donation["phone"],
                      type: donation["skills"],
                      icon: const Icon(
                        Icons.stream,
                        color: Colors.orangeAccent,
                      ),
                      details: donation["more"],
                      status: "قيد المعالجة",
                    ),
                  ],
                );
                donationWidgets.add(donationWidget);
              }
            }
            return Expanded(
              child: ListView(
                children: donationWidgets,
              ),
            );
          },
        ),
      ),
    );
  }
}
