import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

class Management extends StatefulWidget {
  Management({Key? key}) : super(key: key);

  @override
  _ManagementState createState() => _ManagementState();
}

class _ManagementState extends State<Management> {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('Management'),
            ),
            body:
                // Generated code for this ListView Widget...
                ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contacts',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'THE ADMISSIONS OFFICE \nKabarak University \nPrivate Bag-20157, \nKABARAK \nTel. 020 2114658, 0729 223 370 \nadmissions@kabarak.ac.ke',
                        // style: TextStyle(
                        //   fontFamily: 'Poppins',
                        // ),
                      ),
                      Text(
                        'THE DIRECTOR \nKabarak University \nNakuru Town Campus \nNakuru-Kabarak Road \nTel. 0720 511 838 / 0774 488 864 \nnakurutowncampus@kabarak.ac.ke',
                        // style: TextStyle(
                        //   fontFamily: 'Poppins',
                        // ),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
