import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// ignore: unused_import
import 'package:random_string/random_string.dart';
import 'package:student_orientation/models/user.dart';
import 'package:student_orientation/models/user_preferences.dart';
import 'package:student_orientation/screens/login_page.dart';
// ignore: unused_import
import 'dart:math' show Random;

class ForumUpdate extends StatefulWidget {
  ForumUpdate({Key? key}) : super(key: key);

  @override
  _ForumUpdateState createState() => _ForumUpdateState();
}

class _ForumUpdateState extends State<ForumUpdate> {
  late User currentUser;
  final _datecontroller = TextEditingController();
  final _descriptioncontroller = TextEditingController();
  final _linkcontroller = TextEditingController();
  final _titlecontroller = TextEditingController();
  final _virtualcontroller = TextEditingController();
  TextEditingController dateinput = TextEditingController();
  static String date = "";
  static String description = "";
  static String link = "";
  static String title = "";
  static String virtual = "";
  Uzer uzer = UserPreferences.myUser;
  late final User user;
  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Add New Forum Item',
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             const  Text(
                'Date',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(date),
              TextField(
                readOnly: true,
                controller: dateinput,
                maxLines: 1,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(
                          2000), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101));

                  if (pickedDate != null) {
                    // print(
                    //     pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    // print(
                    //     formattedDate); //formatted date output using intl package =>  2021-03-16
                    //you can implement different kind of Date Format here according to your requirement

                    setState(() {
                      dateinput.text =
                          formattedDate; //set output date to TextField value.
                    });
                  } else {
                    // print("Date is not selected");
                  }
                },
                decoration: InputDecoration(
                  icon: const Icon(Icons.calendar_today),
                  labelText: 'Enter Date',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ),
             const  Text(
                'Title',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              // Text(title),
              TextField(
                controller: _titlecontroller,
                maxLines: 1,
                decoration: InputDecoration(
                  icon: const Icon(Icons.title_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ),
              const Text(
                'Link',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              // Text(link),
              TextField(
                controller: _linkcontroller,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'e.g., http:// ...',
                  icon: const Icon(Icons.link_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ),
              const Text(
                'Description',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              // Text(description),
              TextField(
                controller: _descriptioncontroller,
                maxLines: 5,
                decoration: InputDecoration(
                  icon: const Icon(Icons.feedback_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ),
              // const Text(
              //   'Virtual',
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              // ),
              // Text(virtual.toString()),
              // TextField(
              //   controller: _virtualcontroller,
              //   maxLines: 1,
              //   decoration: InputDecoration(
              //     icon: const Icon(Icons.online_prediction_rounded),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(9),
              //     ),
              //   ),
              // ),
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
                    onPressed: () {
                      setState(() {
                        date = _datecontroller.text;
                        description = _descriptioncontroller.text;
                        link = _linkcontroller.text;
                        title = _titlecontroller.text;
                        virtual = _virtualcontroller.text;
                      });
                      var feedback = '';
                      // var id=FirebaseFirestore.instance.collection('Forum').doc().id;
                      // var id = randomAlpha(20);
                      var id = 
                      FirebaseFirestore.instance
                          .collection('Forum')
                          .doc().id;
                      // print(Random());
                      FirebaseFirestore.instance
                          .collection('Forum')
                          .doc(id)
                          .set({
                        "date": dateinput.text,
                        "description": description,
                        "link": link,
                        "title": title,
                        "virtual": virtual,
                        "feedback": feedback,
                        "id": id,
                      });
                      // user.add({'name':named,'age':age}).then((value) => print('User Added')).catchError((error)=>print('Failed to add User: $error'));

                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: const Text('Update Forum'),
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
