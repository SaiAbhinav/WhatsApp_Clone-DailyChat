import 'package:flutter/material.dart';
import 'package:whats_app/utils/colors.dart';

class SettingsAccountPage extends StatelessWidget {
  final List<Map<String, dynamic>> options = [
    {'icon': Icons.lock, 'name': 'Privacy'},
    {'icon': Icons.security, 'name': 'Security'},
    {'icon': Icons.more_horiz, 'name': 'Two-step verification'},
    {'icon': Icons.phone_android, 'name': 'Change number'},
    {'icon': Icons.insert_drive_file, 'name': 'Request account info'},
    {'icon': Icons.delete, 'name': 'Delete my account'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            child: Row(
              children: <Widget>[
                Icon(
                  options[index]['icon'],
                  color: primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                  child: Text(
                    options[index]['name'],
                    style: TextStyle(fontSize: 16.0),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
