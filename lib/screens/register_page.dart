import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:student_orientation/screens/profile_page.dart';
import 'package:student_orientation/utils/fire_auth.dart';
import 'package:student_orientation/utils/validator.dart';
//imports of packages used in this code

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}
//stateful widget creation
class _RegisterPageState extends State<RegisterPage> {
  final _registerFormKey = GlobalKey<FormState>();
  final _nameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _bioTextController = TextEditingController();
  final _registrationNumberTextController = TextEditingController();
  final _courseTextController = TextEditingController();
  final _hobbiesTextController = TextEditingController();
  final _skillsTextController = TextEditingController();

  // ignore: unused_field
  static String name = "";
  // ignore: unused_field
  static String email = "";
  // ignore: unused_field
  static String about = "";
  static String bio = "";
  static String skills = "";
  static String hobbies = "";
  static String course = "";
  // ignore: non_constant_identifier_names
  static String registration_number = "";
  var named = '';
  var age = 0;

  final _focusName = FocusNode();
  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();
  final _focusbio = FocusNode();
  final _focusRegistrationNumber = FocusNode();
  final _focusCourse = FocusNode();
  final _focusHobbies = FocusNode();
  final _focusSkills = FocusNode();

  bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusName.unfocus();
        _focusEmail.unfocus();
        _focusPassword.unfocus();
        _focusbio.unfocus();
        _focusRegistrationNumber.unfocus();
        _focusCourse.unfocus();
        _focusHobbies.unfocus();
        _focusSkills.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Create New Account'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Form(
                      key: _registerFormKey,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://calendarmedia.blob.core.windows.net/assets/bcdfbf75-4b13-4c05-8b06-4ef85a6f8103.jpg',
                              width: 220,
                              height: 160,
                              fit: BoxFit.fill,
                            ),
                          ),
                          TextFormField(
                            controller: _nameTextController,
                            focusNode: _focusName,
                            validator: (value) => Validator.validateName(
                              name: value,
                            ),
                            decoration: InputDecoration(
                              hintText: "Name",
                              labelText: "Name",
                              errorBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            controller: _emailTextController,
                            focusNode: _focusEmail,
                            validator: (value) => Validator.validateEmail(
                              email: value,
                            ),
                            decoration: InputDecoration(
                              hintText: "Email",
                              labelText: "Email",
                              errorBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            controller: _passwordTextController,
                            focusNode: _focusPassword,
                            obscureText: true,
                            validator: (value) => Validator.validatePassword(
                              password: value,
                            ),
                            decoration: InputDecoration(
                              hintText: "Password",
                              labelText: "Password",
                              errorBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 32.0),
                          TextFormField(
                            controller: _bioTextController,
                            focusNode: _focusbio,
                            validator: (value) => Validator.validateName(
                              name: value,
                            ),
                            decoration: InputDecoration(
                              hintText: "Bio",
                              labelText: "Bio",
                              errorBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            controller: _registrationNumberTextController,
                            focusNode: _focusRegistrationNumber,
                            validator: (value) => Validator.validateName(
                              name: value,
                            ),
                            decoration: InputDecoration(
                              hintText: "Registration Number",
                              labelText: "Registration Number",
                              errorBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            controller: _courseTextController,
                            focusNode: _focusCourse,
                            validator: (value) => Validator.validateName(
                              name: value,
                            ),
                            decoration: InputDecoration(
                              hintText: "Course",
                              labelText: "Course",
                              errorBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            controller: _hobbiesTextController,
                            focusNode: _focusHobbies,
                            validator: (value) => Validator.validateName(
                              name: value,
                            ),
                            decoration: InputDecoration(
                              hintText: "Hobbies",
                              labelText: "Hobbies",
                              errorBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            controller: _skillsTextController,
                            focusNode: _focusSkills,
                            validator: (value) => Validator.validateName(
                              name: value,
                            ),
                            decoration: InputDecoration(
                              hintText: "Skills",
                              labelText: "Skills",
                              errorBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          _isProcessing
                              ? Column(children: [
                                  CircularProgressIndicator(),
                                  const Text(
                                      'Please wait as your data gets saved'),
                                  SizedBox(
                                    height: 20,
                                  )
                                ])
                              : Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          setState(() {
                                            _isProcessing = true;
                                            name = _nameTextController.text;
                                            email = _emailTextController.text;
                                            bio = _bioTextController.text;
                                            skills = _skillsTextController.text;
                                            course = _courseTextController.text;
                                            hobbies =
                                                _hobbiesTextController.text;
                                            registration_number =
                                                _registrationNumberTextController
                                                    .text;
                                          });

                                          if (_registerFormKey.currentState!
                                              .validate()) {
                                                //code to register a new user using Firebase Auth package
                                            User? user = await FireAuth
                                                .registerUsingEmailPassword(
                                              name: _nameTextController.text,
                                              email: _emailTextController.text,
                                              password:
                                                  _passwordTextController.text,
                                            ).then((value) {
                                              String _student = "true";

                                              String picLink =
                                              
                                                "https://previews.123rf.com/images/yanalesnyk/yanalesnyk1605/yanalesnyk160500016/58949015-male-unknown-user-social-icon-isolated-vector-image-for-your-projects.jpg";
                                              //code to save new entered values to Firebase Firestore  Cloud Database using FirebaseFirestore package
                                              FirebaseFirestore.instance
                                                  .collection('UserData')
                                                  .doc(
                                                    value!.email,
                                                  )
                                                  .set({
                                                "bio": bio,
                                                "email": value.email,
                                                "name": value.displayName,
                                                "skills": skills,
                                                "course": course,
                                                "hobbies": hobbies,
                                                "student": _student,
                                                "pic_link": picLink,
                                                "registration_number":
                                                    registration_number
                                              });
                                            });

                                            setState(() {
                                              _isProcessing = false;
                                            });
                                            // Navigator.of(context)
                                            //       .pushReplacement(
                                            //     MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           ProfilePage(),
                                            //     ),

                                            //   );

                                            if (user != null) {
                                              // Navigator.pop(context);

                                              Navigator.of(context)
                                                  .pushAndRemoveUntil(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProfilePage(user: user),
                                                ),
                                                ModalRoute.withName('/'),
                                              );
                                            } else {
                                              Text(
                                                  'User Account not Available!');
                                              const Text(
                                                  'Please Register or login');
                                            }
                                          }
                                        },
                                        child:const Text(
                                          'Sign up',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
