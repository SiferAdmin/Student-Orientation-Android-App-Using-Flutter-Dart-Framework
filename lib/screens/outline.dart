import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Outline extends StatefulWidget {
  Outline({Key? key}) : super(key: key);

  @override
  _OutlineState createState() => _OutlineState();
}

class _OutlineState extends State<Outline> {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('Outline'),
            ),
            body: // Generated code for this ListView Widget...

// Generated code for this ListView Widget...
                Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment(0, 0),
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://www.musicinafrica.net/sites/default/files/styles/profile_photo/public/images/music_professional_profile/201406/kabarakuniversitylogo.jpg?itok=w18lv2Vb',
                              // 'data:image/jpeg;base64,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',
                              // 'data:image/jpeg;base64,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',
                              width: 290,
                              height: 290,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            'Education In A Biblical Perspective',
                            style: GoogleFonts.getFont(
                              'Lato',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CachedNetworkImage(
                                imageUrl:
                                    'https://www.kebs.org/images/ISO-9001.gif',
                                // 'data:image/png;base64,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',
                                width: 20,
                                height: 20,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Kabarak University is ISO 9001:2015 certified',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                ),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: () async {
                              await launch(
                                  'https://kabarak.ac.ke/home-page-default/');
                            },
                            child: Text(
                              'www.kabarak.ac.ke',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          Text(
                            'Vision',
                            style: GoogleFonts.getFont(
                              'Lato',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Text(
                              'To become a center of Academic Excellence founded on Biblical Christian values.',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          Text(
                            'Mission',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Text(
                              'To provide a holistic quality education based on research, practical skills and Biblical Christian values.',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          Text(
                            'Core Values',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '• Integrity \n• Excellence and Professionalism \n• Patriotism and Being Mindful of Others \n• Innovativeness and Creativity',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            'Moral Code',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'As members of Kabarak University family, \nwe purpose at all times and in all places to \nset apart in one’s heart Jesus Christ as Lord. \n(1 Peter 3:15)',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            'Philosophy',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'To provide quality education in Biblical perspective that transforms life.',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            'Years: 21 \nGraduations: 16 \nSchools: 8 \nlibrary Capacity:1000',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'Kabarak University Anthem',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Refrain \nKabarak, Kabarak, Kabarak, \nWe proclaim Jesus as the Lord \n \nKabarak, Kabarak, Kabarak, \n \nThe University of Now and the future',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    'Verse one \n \nBy God’s blessings we’ve come this far \n \nWe strive for excellence in education \n \nFor innovation and research \n \nWe provide holistic education \n \nLearning from Biblical Christian perspective \n \nWe aim to develop creative minds \n \n  \n \nVerse two \n \nWe thank God for President Moi \n \nSacrificing for the success of all \n \nHappy and grateful ever we are \n \nConquering and standing out \n \nJesus our Saviour, our strength and protector \n \nForward we are marching \n \nWe are the best',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    'KABARAK UNIVERSITY MAIN CAMPUS \n \nThe Vice-Chancellor \nP.O.Private Bag 20157 \n \nKABARAK \n \nTel:     (254) 0729 223 370 \n \nGeneral Enquiries Email: info@kabarak.ac.ke \n \n  \n \nComplaints/Compliments \n \nfeedback@kabarak.ac.ke \n \n  \n \nAdmissions: \n \nTel:     (254) 020 211 4658 \n \nEmail: admissions@kabarak.ac.ke \n \n  \n \nRegistrar Admin & Hr \n \nregistrar@kabarak.ac.ke \n \n  \n \nAcademic Registrar \n \nacademic_registrar@kabarak.ac.ke \n \n  \n \nStudent finance \n \nstudentfinance@kabarak.ac.ke \n \n  \n \nICT Help desk \n \nicthelpdesk@kabarak.ac.ke \n \n  \n \nMoodle and Online support \n \nstudentsupport@kabarak.ac.ke \n \nkabuo@kabarak.ac.ke',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
