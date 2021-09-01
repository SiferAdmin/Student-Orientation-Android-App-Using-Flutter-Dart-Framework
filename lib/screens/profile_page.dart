import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_orientation/models/user.dart';
import 'package:student_orientation/models/user_preferences.dart';
import 'package:student_orientation/screens/forum_update.dart';
// import 'package:student_orientation/screens/privacy_settings.dart';
// import 'package:student_orientation/screens/search_page.dart';
import 'package:student_orientation/theme/themes.dart';
import 'package:student_orientation/utils/fire_auth.dart';
import 'package:student_orientation/widgets/numbers_widget.dart';

// import 'app_info.dart';
import 'contact_us.dart';
import 'edit_profile_page.dart';
import 'forum_page.dart';
import 'home_feed.dart';
import 'login_page.dart';
// import 'message_page.dart';
// import 'new_notification_page.dart';
// import 'notification_page.dart';
// import 'notification_settings.dart';

class ProfilePage extends StatefulWidget {
  final User user;
  const ProfilePage({required this.user});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentIndex = 0;
  // ignore: unused_field
  List<Widget> _children = [
    HomeFeedPage(),
    // SearchPage(),
    ForumPage(),
    // NotificationPage(),
  ];

  bool isSendingVerification = false;
  bool isSigningOut = false;

  late User currentUser;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    currentUser = widget.user;
    super.initState();
  }

  Stream collectionStream =
      FirebaseFirestore.instance.collection('users').snapshots();
  Stream documentStream =
      FirebaseFirestore.instance.collection('users').doc('ABC123').snapshots();
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final uzer = UserPreferences.myUser;
    // ignore: unused_local_variable
    final Stream<DocumentSnapshot> users = FirebaseFirestore.instance
        .collection('UserData')
        .doc(currentUser.email)
        .snapshots();
    CollectionReference loggedUser =
        FirebaseFirestore.instance.collection('UserData');
    // var user_type=loggedUser.doc(currentUser.email).get());
    return Scaffold(
      key: this._scaffoldKey,
      appBar: AppBar(
        title: const Text('Student Orientation'),
        actions: <Widget>[
          FutureBuilder<DocumentSnapshot>(
            future: loggedUser.doc(currentUser.email).get(),
            builder: (BuildContext context,
                AsyncSnapshot<DocumentSnapshot> snapshot) {
              if (snapshot.hasError) {
                return const Text("Something went wrong");
              }

              if (snapshot.hasData && !snapshot.data!.exists) {
                return const Text("Document does not exist");
              }
              if (snapshot.connectionState == ConnectionState.done) {
                Map<String, dynamic> data =
                    snapshot.data!.data() as Map<String, dynamic>;
                return "${data['student']}" != 'false'
                        ? SizedBox(
                            width: 20,
                          )
                        : IconButton(
                            icon: const Icon(Icons.my_library_add_rounded
                                // color: Colors.white,
                                ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForumUpdate(),
                                ),
                              );
                            },
                          )

                    //  Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Column(
                    //     children: [
                    //       ClipOval(
                    //         child: Material(
                    //             child: CachedNetworkImage(
                    //           width: 120,
                    //           height: 120,
                    //           fit: BoxFit.fill,
                    //           imageUrl: "${data['pic_link']}",
                    //         )),
                    //       )
                    //     ],
                    //   ),
                    // );
                    ;
              }

              return const Text("'");
            },
          )

          // (userType != 'true')
          //     ? IconButton(
          //         icon: const Icon(Icons.my_library_add_rounded
          //             // color: Colors.white,
          //             ),
          //         onPressed: () {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) => ForumUpdate(),
          //             ),
          //           );
          //         },
          //       )
          //     :
          //     // Spacer(),
          //     SizedBox(
          //         width: 20,
          //       )
          // IconButton(
          //   icon: const Icon(
          //     Icons.favorite_border_rounded,
          //     // color: Colors.white,
          //   ),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => NewNotificationPage(),
          //       ),
          //     );
          //   },
          // ),
          // IconButton(
          //   icon: const Icon(
          //     Icons.chat_bubble_outline_rounded,
          //     // color: Colors.white,
          //   ),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => MessagePage(),
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
      body: (currentIndex < 2)
          ? _children[currentIndex]
          : ListView(physics: BouncingScrollPhysics(), children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  FutureBuilder<DocumentSnapshot>(
                                    future:
                                        loggedUser.doc(currentUser.email).get(),
                                    builder: (BuildContext context,
                                        AsyncSnapshot<DocumentSnapshot>
                                            snapshot) {
                                      if (snapshot.hasError) {
                                        return const Text(
                                            "Something went wrong");
                                      }

                                      if (snapshot.hasData &&
                                          !snapshot.data!.exists) {
                                        return const Text(
                                            "Document does not exist");
                                      }

                                      if (snapshot.connectionState ==
                                          ConnectionState.done) {
                                        Map<String, dynamic> data =
                                            snapshot.data!.data()
                                                as Map<String, dynamic>;
                                        // final imaged = NetworkImage("https://i.ibb.co/sR127ZJ/16-2.png");
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              ClipOval(
                                                child: Material(
                                                    child: CachedNetworkImage(
                                                  width: 120,
                                                  height: 120,
                                                  fit: BoxFit.cover,
                                                  imageUrl:
                                                      "${data['pic_link']}",
                                                )),
                                              )
                                            ],
                                          ),
                                        );
                                      }

                                      return const Text("loading image");
                                    },
                                  ),
                                  NumbersWidget(),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.topCenter,
                        child: IconButton(
                            tooltip: 'View Settings',
                            icon: const Icon(
                              Icons.menu_rounded,
                              // color: Colors.deepPurple
                            ),
                            onPressed: () => this
                                ._scaffoldKey
                                .currentState!
                                .showBottomSheet(
                                    (ctx) => _buildBottomSheet(ctx))
                            // this
                            // .scaffoldKey
                            // .currentState
                            // .showBottomSheet((ctx) => _buildBottomSheet(ctx)),
                            // null,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: ButtonTheme(
                  minWidth: 200.0,
                  height: 20.0,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      // primary: Colors.white,
                      // backgroundColor: Colors.black,
                      shape: StadiumBorder(),
                      elevation: 2,
                      padding: EdgeInsets.only(left: 130, right: 130),
                    ),
                    onPressed: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfilePage(
                                    user: currentUser,
                                  )));
                    },
                    child: const Text('Edit Profile'),
                  ),
                ),
              ),
              Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Name: ${currentUser.displayName}',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Email: ${currentUser.email}',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(height: 16.0),
                      currentUser.emailVerified
                          ? Text(
                              'Email verified',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: Colors.green),
                            )
                          : Text(
                              'Email not verified',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: Colors.red),
                            ),
                      SizedBox(height: 16.0),
                      isSendingVerification
                          ? CircularProgressIndicator()
                          : Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ElevatedButton(
                                  onPressed: () async {
                                    setState(() {
                                      isSendingVerification = true;
                                    });
                                    await currentUser.sendEmailVerification();
                                    setState(() {
                                      isSendingVerification = false;
                                    });
                                  },
                                  child: const Text('Verify email'),
                                ),
                                SizedBox(width: 8.0),
                                IconButton(
                                  icon: const Icon(Icons.refresh),
                                  onPressed: () async {
                                    User? user =
                                        await FireAuth.refreshUser(currentUser);

                                    if (user != null) {
                                      setState(() {
                                        currentUser = user;
                                      });
                                    }
                                  },
                                ),
                              ],
                            ),
                      SizedBox(height: 16.0),
                      isSigningOut
                          ? CircularProgressIndicator()
                          : ElevatedButton(
                              onPressed: () async {
                                setState(() {
                                  isSigningOut = true;
                                });
                                await FirebaseAuth.instance.signOut();
                                setState(() {
                                  isSigningOut = false;
                                });
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                );
                              },
                              child: const Text('Sign out'),
                              style: ElevatedButton.styleFrom(
                                // primary: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                    ],
                  ),
                ],
              ),
              FutureBuilder<DocumentSnapshot>(
                future: loggedUser.doc(currentUser.email).get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return const Text("Something went wrong");
                  }

                  if (snapshot.hasData && !snapshot.data!.exists) {
                    return const Text("Document does not exist");
                  }

                  if (snapshot.connectionState == ConnectionState.done) {
                    Map<String, dynamic> data =
                        snapshot.data!.data() as Map<String, dynamic>;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Bio',
                            style: GoogleFonts.getFont(
                              'Lato',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text("${data['bio']}"),
                          SizedBox(height: 10),
                          Text(
                            'Course',
                            style: GoogleFonts.getFont(
                              'Lato',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text("${data['course']}"),
                          SizedBox(height: 10),
                          Text(
                            'Hobbies',
                            style: GoogleFonts.getFont(
                              'Lato',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text("${data['hobbies']}"),
                          SizedBox(height: 10),
                          Text(
                            'Registration Number',
                            style: GoogleFonts.getFont(
                              'Lato',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text("${data['registration_number']}"),
                          SizedBox(height: 10),
                          Text(
                            'Skills',
                            style: GoogleFonts.getFont(
                              'Lato',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text("${data['skills']}"),
                        ],
                      ),
                    );
                  }

                  return const Text("loading");
                },
              )
            ]),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_filled),
            label: 'Home',
          ),
          // BottomNavigationBarItem(
          //   icon: const Icon(Icons.search_rounded),
          //   label: 'Search',
          // ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.forum_rounded),
            label: 'Forum',
          ),
          // BottomNavigationBarItem(
          //   icon: const Icon(Icons.favorite_rounded),
          //   label: 'Notification',
          // ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  buildAbout(Uzer user) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 24.0,
              ),
            ),
            Text(
              user.about,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16.0,
                height: 1.4,
              ),
            ),
          ],
        ),
      );
}

Container _buildBottomSheet(BuildContext context) {
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;
  // ignore: unused_local_variable
  final auth = FirebaseAuth.instance;

  return Container(
    height: 300,
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.deepPurple, width: 2.0),
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: ListView(
      children: [
        ListTile(
          title: const Text('App Settings'),
        ),
        //  const Text('Dark Mode')
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: InkWell(
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      final theme =
                          isDarkMode ? MyThemes.lightTheme : MyThemes.darkTheme;
                      final switcher = ThemeSwitcher.of(context)!;
                      switcher.changeTheme(theme: theme);
                    },
                    child: const Text('Toggle Dark/Bright Theme')),
                ThemeSwitcher(
                  builder: (context) => IconButton(
                    tooltip: 'View Settings',
                    icon: const Icon(
                      Icons.wb_sunny_rounded,
                      // color: Colors.white,
                    ),
                    onPressed: () {
                      final theme =
                          isDarkMode ? MyThemes.lightTheme : MyThemes.darkTheme;
                      final switcher = ThemeSwitcher.of(context)!;
                      switcher.changeTheme(theme: theme);
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            onTap: () {
              final theme =
                  isDarkMode ? MyThemes.lightTheme : MyThemes.darkTheme;
              final switcher = ThemeSwitcher.of(context)!;
              switcher.changeTheme(theme: theme);
            },
          ),
        ),
        //  const Text('Notification')

        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child:
        //    InkWell(
        //     child:  const Text('Notification Settings'),
        //     onTap: () async {
        //       await Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //               builder: (context) => NotificationSettings()));
        //     },
        //   ),
        // ),
        //  const Text('Privacy')
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: InkWell(
        //     child:  const Text('Privacy'),
        //     onTap: () async {
        //       await Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => PrivacySettings()));
        //     },
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: InkWell(
        //     child:  const Text('App Info'),
        //     onTap: () async {
        //       await Navigator.push(
        //           context, MaterialPageRoute(builder: (context) => AppInfo()));
        //     },
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: const Text('Contact Us'),
            onTap: () async {
              await Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Contact()));
            },
          ),
        ),

        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: InkWell(
        //     child:  const Text('Sign Out'),
        //     onTap: () async {
        //                 setState(() {
        //                   isSigningOut = true;
        //                 });
        //                 await FirebaseAuth.instance.signOut();
        //                 setState(() {
        //                   isSigningOut = false;
        //                 });
        //                 Navigator.of(context).pushReplacement(
        //                   MaterialPageRoute(
        //                     builder: (context) => LoginPage(),
        //                   ),
        //                 );
        //               },
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: const Text('Exit App'),
            onTap: () {
              SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            },
          ),
        ),
      ],
    ),
  );
}
