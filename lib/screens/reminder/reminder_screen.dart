import 'package:barbar_app/screens/reminder/reminder_detail_page.dart';
import 'package:flutter/material.dart';

class ReminderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Reminders'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16.0),
            const Text(
              'Upcoming Reminders',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 16.0),
            ReminderCard(
              title: 'Haircut Reminder',
              date: 'Friday, 8th April 2023',
              time: '3:00 PM',
            ),
            const Divider(),
            ReminderCard(
              title: 'Beard Trim Reminder',
              date: 'Saturday, 9th April 2023',
              time: '1:00 PM',
            ),
            const Divider(),
            ReminderCard(
              title: 'Hair Dye Reminder',
              date: 'Sunday, 10th April 2023',
              time: '2:30 PM',
            ),
          ],
        ),
      ),
    );
  }
}

class ReminderCard extends StatelessWidget {
  final String title;
  final String date;
  final String time;

  ReminderCard({
    required this.title,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ReminderDetailPage(
            appointmentType: title,
            appointmentTime: time,
            appointmentDate: date,
          );
        }));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.notifications_none_rounded,
            size: 40.0,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
