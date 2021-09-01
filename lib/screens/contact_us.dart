import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Contact Us'),
          ),
          body: Center(
            child: Container(
              child: ContactUs(
                // logo: AssetImage('images/crop.jpg'),
                email: 'anitamerengo@gmail.com',
                companyName: 'Anitah Merengo',
                phoneNumber: '+254746521608',
                dividerThickness: 2,
                // website: 'https://abhishekdoshi.godaddysites.com',
                // githubUserName: 'AbhishekDoshi26',
                // linkedinURL: 'https://www.linkedin.com/in/abhishek-doshi-520983199/',
                tagLine: 'Flutter Developer',
                facebookHandle: 'princessmerengo',

                twitterHandle: '@anitah_merengo',
                cardColor: Colors.lightBlueAccent,
                companyColor: Colors.cyan,
                taglineColor: Colors.amber,
                textColor: Colors.black38,
                // instagramUserName: '_abhishek_doshi', taglineColor: Colors.red, companyColor: Colors.amber, cardColor: Colors.lightBlue, textColor: Colors.amber,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
