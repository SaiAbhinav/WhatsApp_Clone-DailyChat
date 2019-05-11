import 'package:flutter/material.dart';
import 'package:whats_app/utils/colors.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  final int tabIndex;
  final IconData fabIcon;

  FloatingActionButtonWidget(this.tabIndex, this.fabIcon);

  List<Widget> _buildFABs() {
    List<Widget> _fabs = [];
    if (tabIndex == 2) {
      _fabs = <Widget>[
        Container(
          width: 45.0,
          height: 45.0,
          child: FloatingActionButton(
            child: Icon(
              Icons.edit,
              color: editFABColor,
            ),
            backgroundColor: editFABBackgroundColor,
            onPressed: () {},
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        FloatingActionButton(
          child: Icon(fabIcon),
          backgroundColor: primaryColor,
          onPressed: () {},
        )
      ];
    } else {
      _fabs = <Widget>[
        FloatingActionButton(
          child: Icon(fabIcon),
          backgroundColor: primaryColor,
          onPressed: () {},
        )
      ];
    }
    return _fabs;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: _buildFABs(),
      );
  }
}
