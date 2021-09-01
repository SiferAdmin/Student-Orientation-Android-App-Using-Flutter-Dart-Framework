import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // buildButton(context, '4%', 'Progress'),
          // buildButton(context, '35', 'Linked Peers'),
          // buildButton(context, '50', 'Followers'),
        ],
      );

  buildButton(BuildContext context, String value, String text) => TextButton(
        onPressed: () {},
        child: Column(
          children: [
            Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
}
