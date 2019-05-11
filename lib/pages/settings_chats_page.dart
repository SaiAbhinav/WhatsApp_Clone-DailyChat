import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whats_app/utils/colors.dart';

class SettingsChatsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingsChatsPageState();
  }
}

class _SettingsChatsPageState extends State<SettingsChatsPage> {
  bool _enterAsSend = false;
  bool _mediaVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 64.0),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Enter is send',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'Enter key will send your message',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Switch(
                  activeColor: primaryColor,
                  value: _enterAsSend,
                  onChanged: (bool value) {
                    setState(() {
                      _enterAsSend = value;
                    });
                  },
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 64.0),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Media visibility',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Show newly downloaded media in your phone\'s gallery',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
                Switch(
                  activeColor: primaryColor,
                  value: _mediaVisibility,
                  onChanged: (bool value) {
                    setState(() {
                      _mediaVisibility = value;
                    });
                  },
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 64.0),
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Font size',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Medium',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 64.0),
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'App Language',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Phone\'s language (English)',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.wallpaper,
                  color: primaryColor,
                  size: 26.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                  child: Text(
                    'Wallpaper',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.backup,
                  color: primaryColor,
                  size: 26.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                  child: Text(
                    'Chat backup',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.history,
                  color: primaryColor,
                  size: 26.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                  child: Text(
                    'Chat history',
                    style: TextStyle(
                      fontSize: 16.0,
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
