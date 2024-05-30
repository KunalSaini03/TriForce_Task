import 'package:flutter/material.dart';
import '../widgets/lead_info_card.dart';
import '../widgets/follow_up_card.dart';

class LeadDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Lead Details'),
        ),
        body: Column(
          children: [
            LeadInfoCard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(icon: Icon(Icons.call), onPressed: () {}),
                    Text('Call')
                  ],
                ),
                Column(
                  children: [
                    IconButton(icon: Icon(Icons.chat), onPressed: () {}),
                    Text("WhatsApp")
                  ],
                ),
                Column(
                  children: [
                    IconButton(icon: Icon(Icons.email), onPressed: () {}),
                    Text("Email")
                  ],
                ),
                Column(
                  children: [
                    IconButton(icon: Icon(Icons.close), onPressed: () {}),
                    Text("Close")
                  ],
                ),
              ],
            ),
            TabBar(
              tabs: [
                Tab(text: 'FOLLOW UP'),
                Tab(text: 'ATTACHMENTS'),
                Tab(text: 'NOTES'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  FollowUpTab(),
                  Center(child: Text('Attachments Tab Content')),
                  Center(child: Text('Notes Tab Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FollowUpTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('ADD NEW'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3F51B5),
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  textStyle: TextStyle(fontSize: 16.0),
                  foregroundColor: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              FollowUpCard(
                date: 'April 14, 2020 4:17 pm',
                status: 'Call | Scheduled',
                title: 'Follow up - 2',
                description: 'Customer is exploring Finance options.',
                chipColor: Color(0xFF3F51B5), 
              ),
              FollowUpCard(
                date: 'April 10, 2020 4:17 pm',
                status: 'Call | Completed',
                title: 'Follow up - 2',
                description: 'Customer is exploring Finance options.',
              ),
              FollowUpCard(
                date: 'April 8, 2020 4:17 pm',
                status: 'Lead Created',
                title: 'Lead Assigned',
                description: 'New Lead Assigned by Manager.',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
