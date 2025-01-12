import 'package:fazaa_app/pages/donations_page.dart';
import 'package:fazaa_app/pages/instructions.dart';
import 'package:fazaa_app/pages/map_page.dart';
import 'package:fazaa_app/pages/reporting_page.dart';

final List<Map<String, dynamic>> pageDetails = [
  {
    "pageName": const MapPage(),
    //"title" : ""
  },
  {
    "pageName": const Instructions(),
    "title " : "الإرشادات",
  },
  {
    "pageName": const ReportingPage(),
  },
  {
    "pageName": const DonationsPage(),
  },
];
