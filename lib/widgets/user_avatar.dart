import 'package:flutter/material.dart';
import 'package:whats_app/utils/colors.dart';

class UserAvatar extends StatelessWidget {
  final String name;
  UserAvatar(this.name);

  _showProfileDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(          
          elevation: 0.0,
          contentPadding: EdgeInsets.all(0.0),
          content: Container(
            width: 200.0,
            height: 350.0,
            color: primaryColor.withAlpha(150),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    Icons.person,
                    color: Colors.white.withOpacity(0.4),
                    size: 150.0,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(12.0),
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black.withOpacity(0.3),
                      child: Text(
                        name,
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            Icons.message,
                            color: primaryColor,
                          ),
                          Icon(
                            Icons.call,
                            color: primaryColor,
                          ),
                          Icon(
                            Icons.videocam,
                            color: primaryColor,
                          ),
                          Icon(
                            Icons.info_outline,
                            color: primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showProfileDialog(context);
      },
      child: Icon(
        Icons.account_circle,
        color: avatarColor,
        size: 64.0,
      ),
    );
  }
}
