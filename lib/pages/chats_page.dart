import 'package:flutter/material.dart';
import 'package:whats_app/widgets/chat_item_widget.dart';

class ChatsPage extends StatelessWidget {
  final List<Map<String, String>> users = [
    {'name': 'Anji Reddy', 'message': 'What are you doing?', 'time': '10.16 PM'},
    {'name': 'Apurva', 'message': 'swiggy lo order pettava', 'time': 'YESTERDAY'},
    {'name': 'Aruna', 'message': 'Tinnava', 'time': '5/9/19'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) => ChatItemWidget(users[index]),
      separatorBuilder: (BuildContext context, int index) => const Divider(indent: 78.0,),
    );
  }
}
