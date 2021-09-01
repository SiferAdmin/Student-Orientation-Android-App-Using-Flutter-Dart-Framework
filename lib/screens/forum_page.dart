import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:student_orientation/screens/feedback_update.dart';
import 'package:url_launcher/url_launcher.dart';

class ForumPage extends StatefulWidget {
  ForumPage({Key? key}) : super(key: key);

  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('Forum').snapshots();
  // final Stream<QuerySnapshot> _feedbackStream =
  // FirebaseFirestore.instance.collection('Feedback/feedback').snapshots();

  Stream collectionStream =
      FirebaseFirestore.instance.collection('Forum').snapshots();
  Stream documentStream =
      FirebaseFirestore.instance.collection('Forum').doc('Rules').snapshots();
// ignore: unused_field
  final _fireStore = FirebaseFirestore.instance;
  late User currentUser;
  CollectionReference loggedUserForum =
      FirebaseFirestore.instance.collection('Forum');
  // CollectionReference feedback =
  // FirebaseFirestore.instance.collection('Feedback/feedback');

  final db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
          stream: _usersStream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading Forum");
            }

            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                String f = data['feedback'].toString().replaceAll(']', '');
                f = f.replaceAll('[', '');
                f = f.replaceAll(',', '\n');

                // Timestamp t = data['date'];
                // DateTime d = t.toDate();
                // var dt=t.toString();
                return Card(
                  child: (data['date'] == null)
                      ? SizedBox(
                          height: 0,
                        )
                      : ListTile(
                          focusColor: Colors.purpleAccent[400],
                          // leading: CircleAvatar(
                          //     radius: 8,),

                          title: Row(
                            children: [
                              Text(data['title']),
                              Spacer(),
                              Text(data['date'])
                            ],
                          ),
                          subtitle: Column(
                            children: [
                              Text(data['description']),
                              InkWell(
                                onTap: () async {
                                  await launch(data['link']);
                                },
                                child: Text(
                                  data['link'],
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              InkWell(
                                onDoubleTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FeedbackUpdate(),
                                  ),
                                ),
                                child: Card(
                                  child: ExpansionTile(
                                      expandedAlignment: Alignment.topLeft,
                                      title: const Text('Feedback:'),
                                      textColor: Colors.purple[200],
                                      collapsedTextColor: Colors.red,
                                      children: [
                                        Text(f),
                                      ]),
                                ),
                              )
                            ],
                          ),
                        ),
                );
              }).toList(),
            );
          }),
    );
  }
}
