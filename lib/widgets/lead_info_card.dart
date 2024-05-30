import 'package:flutter/material.dart';

class LeadInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Jhon Doe', style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: 4.0),
                Text('EX000021 | EX000021'),
                SizedBox(height: 4.0),
                Text('Test Ride Done'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Created on', style: Theme.of(context).textTheme.bodyMedium),
                Text('4 Apr 2021', style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
