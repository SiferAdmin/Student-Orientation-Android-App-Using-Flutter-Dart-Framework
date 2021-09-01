import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:student_orientation/models/user.dart';
import 'package:student_orientation/models/user_preferences.dart';
import 'package:student_orientation/screens/login_page.dart';

class FeedbackUpdate extends StatefulWidget {
  FeedbackUpdate({Key? key}) : super(key: key);

  @override
  _FeedbackUpdateState createState() => _FeedbackUpdateState();
}

class Feedback {
  String? feedback;
  Feedback({this.feedback});
}

class _FeedbackUpdateState extends State<FeedbackUpdate> {
  Future<DocumentSnapshot<Map<String, dynamic>>> variable = FirebaseFirestore
      .instance
      .collection('Forum')
      .doc('rojO7jWyYpoXijaVliOa')
      .get();
  User? currentUser;
  final _feedbackcontroller = TextEditingController();

  // static String feedback = "";

  Uzer uzer = UserPreferences.myUser;
  // late final User user;
  User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    String? feedback = '';
    return Scaffold(
      appBar: AppBar(
          title:const  Text(
        'Add Feedback',
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Response',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(feedback.toString()),
              TextField(
                controller: _feedbackcontroller,
                maxLines: 5,
                decoration: InputDecoration(
                  icon: const Icon(Icons.feedback_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
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
                      padding: EdgeInsets.all(7.5),
                    ),
                    onPressed: () async {
                      setState(() {
                        // _feedbackcontroller.text
                        feedback =
                            user!.email! + ': ' + _feedbackcontroller.text;
                      });
                      var collection =
                          FirebaseFirestore.instance.collection('Forum');
                      // ignore: unused_local_variable
                      // print(1);
                      // ignore: unused_local_variable
                      var col=FirebaseFirestore.instance
                          .collection('Forum')
                          .doc();
                      var docID = FirebaseFirestore.instance
                          .collection('Forum').doc().id
                          ;
                      // String feedbacks =
                      // FirebaseFirestore.instance.collection('Feedback').doc();

                      DocumentReference<Map<String, dynamic>> selectedForum =
                          collection.doc(docID);
                      selectedForum.update({'feedback': feedback});
                      // print(feedback);
                      // print(2);

//                       if (docSnapshot.exists) {
//                         // ignore: unused_local_variable
//                         Map<String, dynamic>? data = docSnapshot.data();
// // <-- The value you want to retrieve.
//                         // Call setState if needed.
//                       }

                      //     .add({
                      //   "feedback": FieldValue.arrayUnion([feedback]),
                      // })

                      // user.add({'name':named,'age':age}).then((value) => print('User Added')).catchError((error)=>print('Failed to add User: $error'));

                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: const Text('Update Feedback'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
