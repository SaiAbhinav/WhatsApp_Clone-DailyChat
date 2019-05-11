import 'package:flutter/material.dart';
import 'package:whats_app/utils/colors.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Hero(
            tag: 'user_profile_image',
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    Icons.account_circle,
                    color: avatarColor,
                    size: 200.0,
                  ),
                ),
                Positioned(
                  bottom: 16.0,
                  right: 130.0,
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, right: 8.0, left: 24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Icon(
                    Icons.person,
                    color: primaryColor,
                    size: 26.0,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 24.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Name',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  'Sai Abhinav Reddy',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.edit,
                              color: Colors.grey,
                              size: 26.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'This is not your username or pin. This name will be visible to your WhatsApp contacts.',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
                  Icons.info_outline,
                  color: primaryColor,
                  size: 26.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'About',
                        style: TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        'Available',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.edit,
                    color: Colors.grey,
                    size: 26.0,
                  ),
                ),
              ],
            ),
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
                  Icons.phone,
                  color: primaryColor,
                  size: 26.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'About',
                        style: TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        '+91 9701867437',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
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
