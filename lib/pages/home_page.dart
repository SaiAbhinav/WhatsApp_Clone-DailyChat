import 'package:flutter/material.dart';
import 'package:whats_app/pages/calls_page.dart';
import 'package:whats_app/pages/chats_page.dart';
import 'package:whats_app/pages/settings_page.dart';
import 'package:whats_app/pages/status_page.dart';
import 'package:whats_app/widgets/floating_action_button_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  IconData fabIcon = Icons.message;

  final List<List<Map<String, dynamic>>> options = [
    [
      {'name': 'New group', 'value': 4},
      {'name': 'New broadcast', 'value': 3},
      {'name': 'WhatsApp Web', 'value': 2},
      {'name': 'Starred messages', 'value': 1},
      {'name': 'Settings', 'value': 0},
    ],
    [
      {'name': 'Status privacy', 'value': 1},
      {'name': 'Settings', 'value': 0},
    ],
    [
      {'name': 'Clear call log', 'value': 1},
      {'name': 'Settings', 'value': 0}
    ]
  ];

  @override
  void initState() {
    super.initState();

    tabController = TabController(vsync: this, length: 4)
      ..addListener(() {
        setState(() {
          switch (tabController.index) {
            case 0:
              break;
            case 1:
              fabIcon = Icons.message;
              break;
            case 2:
              fabIcon = Icons.photo_camera;
              break;
            case 3:
              fabIcon = Icons.add_call;
              break;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DailyChat'),        
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 14.0),
            child: Icon(Icons.search),
          ),
          PopupMenuButton(
            onSelected: (dynamic optionValue) {
              if (optionValue == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => SettingsPage()
                  ),
                );
              }
            },
            itemBuilder: (BuildContext context) {
              int pos = tabController.index - 1;
              return options[pos].map((option) {
                return PopupMenuItem(
                  value: option['value'],
                  child: Container(
                    child: Text(option['name']),
                    padding: EdgeInsets.only(right: 40.0),
                  ),
                );
              }).toList();
            },
          )
        ],
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('CHATS'),
                  Container(
                    margin: EdgeInsets.only(left: 4.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    width: 20.0,
                    height: 20.0,
                    child: Center(
                      child: Text('1'),
                    ),
                  )
                ],
              ),
            ),
            Tab(
              child: Text('STATUS'),
            ),
            Tab(
              child: Text('CALLS'),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          Center(
            child: Icon(Icons.camera_alt),
          ),
          ChatsPage(),
          StatusPage(),
          CallsPage()
        ],
      ),
      floatingActionButton:
          FloatingActionButtonWidget(tabController.index, fabIcon),
    );
  }
}
