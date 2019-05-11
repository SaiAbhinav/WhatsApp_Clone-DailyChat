import 'package:flutter/material.dart';
import 'package:whats_app/widgets/call_item_widget.dart';

class CallsPage extends StatelessWidget {
  final List<Map<String, String>> users = [
    {'name': 'Anji Reddy', 'datetime': 'Yesterday, 6:26 PM', 'calltype': 'audio', 'madetype': 'sent'},
    {'name': 'Apurva', 'datetime': 'May 9, 1:49 AM', 'calltype': 'video', 'madetype': 'recieved'},
    {'name': 'Aruna', 'datetime': 'Today, 12:10 PM', 'calltype': 'audio', 'madetype': 'missed'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) => CallItemWidget(users[index]),
      separatorBuilder: (BuildContext context, int index) => const Divider(indent: 78.0,)
    );
  }
}