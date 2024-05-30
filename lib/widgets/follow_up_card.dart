import 'package:flutter/material.dart';

class FollowUpCard extends StatelessWidget {
  final String date;
  final String status;
  final String title;
  final String description;
  final Color? chipColor;

  FollowUpCard({
    required this.date,
    required this.status,
    required this.title,
    required this.description,
    this.chipColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date),
            SizedBox(height: 4.0),
            Text(description),
          ],
        ),
        trailing: Chip(
          label: Text(status),
          backgroundColor: chipColor ?? _getChipColor(status),  
          labelStyle: TextStyle(color: Colors.white),
        ),
        isThreeLine: true,
      ),
    );
  }
}
 Color _getChipColor(String status) {
    switch (status) {
      case 'Scheduled':
        return Colors.orange;  
      case 'Completed':
        return Colors.green;
      case 'Lead Created':
        return Colors.grey;
      default:
        return Colors.grey;
    }
  }

