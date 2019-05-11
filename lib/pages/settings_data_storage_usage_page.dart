import 'package:flutter/material.dart';
import 'package:whats_app/utils/colors.dart';

class SettingsDataStorageUsagePage extends StatefulWidget {
  @override
  _SettingsDataStorageUsagePageState createState() =>
      _SettingsDataStorageUsagePageState();
}

class _SettingsDataStorageUsagePageState
    extends State<SettingsDataStorageUsagePage> {
      bool _lowUsage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data and storage usage'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: Text(
                'Usage',
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: Text('Network usage'),
              subtitle: Text('2.7 send - 2.6 recieved'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: Text('Storage usage'),
              subtitle: Text('694.1 MB'),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: Text(
                'Media auto-download',
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                    'Voice messages are always auto-downloaded for the best communication experience'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: Text('When using mobile data'),
              subtitle: Text('Photos'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: Text('When connected on Wi-Fi'),
              subtitle: Text('All media'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: Text('When roaming'),
              subtitle: Text('No media'),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: Text(
                'Call settings',
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: Text('Low data usage'),
              subtitle: Text('Reduce the data used in a call'),
              trailing: Switch(
                value: _lowUsage,
                activeColor: primaryColor,
                onChanged: (bool value) {
                  setState(() {
                   _lowUsage = value; 
                  });
                },
              ),
            ),
          ),
          SizedBox(height: 14.0,),
        ],
      ),
    );
  }
}
