import 'package:flutter/material.dart';
import 'package:whats_app/utils/colors.dart';
import 'package:whats_app/widgets/user_avatar.dart';

class CallItemWidget extends StatelessWidget {
  final Map<String, String> callItem;

  CallItemWidget(this.callItem);

  Icon _buildIconData() {
    IconData iconData;
    Color color;
    switch (callItem['madetype']) {
      case 'sent':
        iconData = Icons.call_made;
        color = Colors.green;
        break;
      case 'recieved':
        iconData = Icons.call_received;
        color = Colors.green;
        break;
      case 'missed':
        iconData = Icons.call_missed;
        color = Colors.red;
        break;
    }
    return Icon(
      iconData,
      color: color,
      size: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 8.0),
      child: Row(
        children: <Widget>[
          UserAvatar(callItem['name']),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    callItem['name'],
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    children: <Widget>[
                      _buildIconData(),
                      SizedBox(width: 4.0,),
                      Text(
                        callItem['datetime'],
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              callItem['calltype'] == 'audio' ? Icons.phone : Icons.videocam,
              color: primaryColor,
              size: 26.0,
            ),
          )
        ],
      ),
    );
  }
}
