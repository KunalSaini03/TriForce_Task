import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:triforce_task/main.dart'; // Update to match your project structure

void main() {
  testWidgets('Lead details app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(LeadDetailsApp());

    // Verify that the app title is present.
    expect(find.text('Lead Details'), findsOneWidget);

    // Verify that the lead info is displayed.
    expect(find.text('Jhon Doe'), findsOneWidget);
    expect(find.text('EX000021 | EX000021'), findsOneWidget);
    expect(find.text('Test Ride Done'), findsOneWidget);
    expect(find.text('Created on 4 Apr 2021'), findsOneWidget);

    // Verify that action buttons are present.
    expect(find.byIcon(Icons.call), findsOneWidget);
    expect(find.byIcon(Icons.chat), findsOneWidget);
    expect(find.byIcon(Icons.email), findsOneWidget);
    expect(find.byIcon(Icons.close), findsOneWidget);

    // Verify that the follow-up tab is selected by default.
    expect(find.text('FOLLOW UP'), findsOneWidget);

    // Verify that the "Add New" button is present.
    expect(find.text('ADD NEW'), findsOneWidget);

    // Verify that follow-up cards are present.
    expect(find.text('Follow up - 2'), findsNWidgets(2)); // Assuming there are two follow-ups with the same title
    expect(find.text('Lead Assigned'), findsOneWidget);
  });
}
