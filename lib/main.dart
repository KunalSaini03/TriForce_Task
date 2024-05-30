import 'package:flutter/material.dart';
import 'screens/lead_details_screen.dart';
import 'theme.dart';

void main() {
  runApp(LeadDetailsApp());
}

class LeadDetailsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lead Details',
      theme: appTheme,
      home: LeadDetailsScreen(),
    );
  }
}
