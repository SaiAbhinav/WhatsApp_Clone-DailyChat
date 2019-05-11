import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whats_app/utils/colors.dart';

class StatusPage extends StatelessWidget {
  final List<Map<String, String>> users = [
    {
      'name': 'Anji Reddy',
      'message': 'What are you doing?',
      'time': '10.16 PM'
    },
    {
      'name': 'Apurva',
      'message': 'swiggy lo order pettava',
      'time': 'YESTERDAY'
    },
    {'name': 'Aruna', 'message': 'Tinnava', 'time': '5/9/19'},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Icon(
                        Icons.account_circle,
                        color: avatarColor,
                        size: 64.0,
                      ),
                      Positioned(
                        bottom: 4.0,
                        right: 4.0,
                        child: Container(
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'My status',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'Tap to add status update',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Recent updates',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              color: Color.fromRGBO(244, 244, 244, 1.0),
            ),
            ListView.separated(
              itemCount: 3,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (BuildContext context, int position) {
                return Padding(
                  padding:
                      const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 3.0,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0))),
                        child: Icon(
                          Icons.account_circle,
                          color: avatarColor,
                          size: 58.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Abhinav',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              'Yesterday',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => const Divider(indent: 78.0,)
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Viewed updates',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              color: Color.fromRGBO(244, 244, 244, 1.0),
            ),
            ListView.separated(
              itemCount: 5,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (BuildContext context, int position) {
                return Padding(
                  padding:
                      const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 3.0,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0))),
                        child: Icon(
                          Icons.account_circle,
                          color: avatarColor,
                          size: 58.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Abhinav',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              'Yesterday',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => const Divider(indent: 78.0,),
            ),
          ],
        );
      },      
    );
  }
}
