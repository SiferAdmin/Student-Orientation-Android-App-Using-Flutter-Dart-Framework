import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student_orientation/models/user.dart';
import 'package:student_orientation/models/user_preferences.dart';
import 'package:student_orientation/screens/profile_page.dart';
import 'package:student_orientation/utils/validator.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class EditProfilePic extends StatefulWidget {
  final User user;
  EditProfilePic({Key? key, required this.user}) : super(key: key);
  var picker = ImagePicker;

  @override
  _EditProfilePicState createState() => _EditProfilePicState();
}

class _EditProfilePicState extends State<EditProfilePic> {
  late User currentUser;
  final nameTextController = TextEditingController();

  static String name = "";

  final _focusLink = FocusNode();
  Uzer uzer = UserPreferences.myUser;

  @override
  void initState() {
    currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Edit User Profile Pic"),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            const Text(
              'Profile Pic Link',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(name),
            TextFormField(
              controller: nameTextController,
              focusNode: _focusLink,
              validator: (value) => Validator.validateName(
                name: value,
              ),
              decoration: InputDecoration(
                hintText: "Paste or type Link here",
                labelText: "Paste or type Link here",
                errorBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  setState(() {
                    name = nameTextController.text;
                    // print('1');
                  });
                  // print('2');
                  FirebaseFirestore.instance
                      .collection('UserData')
                      .doc(
                        currentUser.email,
                      )
                      .update({
                    "pic_link": name,
                  });
                  // print('3');

                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(
                        user: currentUser,
                      ),
                    ),
                  );
                  // print('4');
                },
                child: const Text('Update Profile Pic')),
            InkWell(
              onTap: () async {
                await launch('https://www.linkpicture.com/');
              },
              child:const  Text(
                'Dont have an online image?\nClick here to create one',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ));
  }
}
