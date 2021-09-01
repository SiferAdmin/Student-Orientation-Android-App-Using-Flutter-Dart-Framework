import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Academic extends StatefulWidget {
  Academic({Key? key}) : super(key: key);

  @override
  _AcademicState createState() => _AcademicState();
}

class _AcademicState extends State<Academic> {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('Academic'),
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
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: const Text(
                          '• All Certificates, Diplomas, or Degrees required for admission must be those recognized by Kabarak University Senate and \nthe Commission for University Education (CUE).',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                      ),
                      const Text(
                        '• Applicants with KCSE C+ (plus) and Diplomas from recognized universities and examiners such as KNEC or KASNEB are eligible \nfor credit transfers in relevant subjects up to second year of study.',
                        // style: TextStyle(
                        //   fontFamily: 'Poppins',
                        // ),
                      ),
                      const Text(
                        '• Daytime, Evening and Weekend classes are offered for programs in Nakuru Town Campus.',
                        // style: TextStyle(
                        //   fontFamily: 'Poppins',
                        // ),
                      ),
                      const Text(
                        'Mode Of Application',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                     const Text(
                        'Application forms and further details are available from Main Campus and Town Campus or visit the link:',
                        // style: TextStyle(
                        //   fontFamily: 'Poppins',
                        // ),
                      ),
                      InkWell(
                        onTap: () async {
                          await launch(
                              'https://kabarak.ac.ke/mode-of-application.');
                        },
                        child: const Text(
                          'mode of application',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Text(
                        'In addition, we have the Institute of Postgraduate Studies Directorate of Research, Innovation and Outreach \nDirectorate of Excellence in Learning and Teaching \nCentre for Quality Assurance',
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
