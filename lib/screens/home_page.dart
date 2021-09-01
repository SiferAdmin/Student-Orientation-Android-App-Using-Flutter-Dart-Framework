import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:student_orientation/screens/saved_page.dart';
import 'package:student_orientation/screens/search_page.dart';

import 'forum_page.dart';
import 'home_feed.dart';
import 'message_page.dart';
import 'new_notification_page.dart';
import 'new_post_page.dart';
import 'notification_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeFeedPage(),
    SearchPage(),
    ForumPage(),
    NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
          endDrawer: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Drawer(
              elevation: 17,
              child: Container(
                width: 100,
                height: 100,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                    ),
                    Align(
                      alignment: Alignment(-0.95, 0),
                      child: Text(
                        'Merengo',
                      ),
                    ),
                    Divider(
                      color: Color(0xFF9E9E9E),
                    ),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          Align(
                            alignment: Alignment(-0.95, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SavedPage()));
                              },
                              child: Text(
                                'Saved',
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(-0.95, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SavedPage()));
                              },
                              child: Text(
                                'Saved',
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(-0.95, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SavedPage()));
                              },
                              child: Text(
                                'Saved',
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(-0.95, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SavedPage()));
                              },
                              child: Text(
                                'Saved',
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(-0.95, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SavedPage()));
                              },
                              child: Text(
                                'Saved',
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          appBar: AppBar(
            title: const Text('Student Orientation'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.add_box_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewPostPage(),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewNotificationPage(),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.chat_bubble_outline_rounded,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MessagePage(),
                    ),
                  );
                },
              ),
            ],
          ),
          body: _children[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            onTap: onTabTapped,
            currentIndex:
                _currentIndex, // this will be set when a new tab is tapped
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.search_rounded),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.forum_rounded),
                label: 'Forum',
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.favorite_rounded),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
