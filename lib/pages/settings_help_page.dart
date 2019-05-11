import 'package:flutter/material.dart';
import 'package:whats_app/utils/colors.dart';

class SettingsHelpPage extends StatelessWidget {
  final List<Map<String, dynamic>> options = [
    {'icon': Icons.help_outline, 'name': 'FAQ'},
    {'icon': Icons.people, 'name': 'Contact us'},
    {'icon': Icons.insert_drive_file, 'name': 'Terms and Privacy Policy'},
    {'icon': Icons.info_outline, 'name': 'App info'},    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
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