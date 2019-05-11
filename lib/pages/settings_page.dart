import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whats_app/pages/profile_page.dart';
import 'package:whats_app/pages/settings_account_page.dart';
import 'package:whats_app/pages/settings_chats_page.dart';
import 'package:whats_app/pages/settings_data_storage_usage_page.dart';
import 'package:whats_app/pages/settings_help_page.dart';
import 'package:whats_app/pages/settings_notifications_page.dart';
import 'package:whats_app/utils/colors.dart';

class SettingsPage extends StatelessWidget {
  final List<Map<String, dynamic>> settings = [
    {
      'icon': Icons.vpn_key,
      'title': 'Account',
      'subtitle': 'Privacy, security, change number'
    },
    {
      'icon': Icons.chat,
      'title': 'Chats',
      'subtitle': 'Backup, history, wallpaper'
    },
    {
      'icon': Icons.notifications,
      'title': 'Notifications',
      'subtitle': 'Message, group & call tones'
    },
    {
      'icon': Icons.account_balance_wallet,
      'title': 'Payments',
      'subtitle': 'History, bank acconts'
    },
    {
      'icon': Icons.donut_large,
      'title': 'Data and storage usage',
      'subtitle': 'Network usage, auto-download'
    },
    {
      'icon': Icons.help_outline,
      'title': 'Help',
      'subtitle': 'FAQ, contact us, privacy policy'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ProfilePage()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: Row(
                children: <Widget>[
                  Hero(
                    tag: 'user_profile_image',
                    child: Icon(
                      Icons.account_circle,
                      size: 72.0,
                      color: avatarColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Sai Abhinav Reddy',
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'Available',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(),
          ListView.builder(
            itemCount: settings.length,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              SettingsAccountPage(),
                        ),
                      );
                      break;
                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              SettingsChatsPage(),
                        ),
                      );
                      break;
                    case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              SettingsNotificationsPage(),
                        ),
                      );
                      break;
                    case 4:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              SettingsDataStorageUsagePage(),
                        ),
                      );
                      break;  
                    case 5:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              SettingsHelpPage(),
                        ),
                      );
                      break;
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, right: 8.0, left: 24.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        settings[index]['icon'],
                        color: primaryColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              settings[index]['title'],
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              settings[index]['subtitle'],
                              style: TextStyle(
                                color: Colors.grey.shade700,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          Divider(
            indent: 72.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, right: 8.0, left: 24.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.people,
                  color: primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 24.0),
                  child: Text(
                    'Invite a friend',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
