import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatefulWidget {
  History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('History'),
            ),
            body:
                // Generated code for this ListView Widget...
                Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          'The University',
                          style: GoogleFonts.getFont(
                            'Lato',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                       const  Text(
                          'Kabarak University is a private Chartered institution of higher learning that provides \nholistic, Christian-based, quality education, research and outreach activities aimed \nat producing graduates who are fully equipped for the service of God and humanity. \nFounded in the year 2000, the second President of Kenya, H.E. the Late Hon. \nDaniel T. Arap Moi, as a result of his visionary idea, set up a Christian University that \nwould meet the demand for higher education in Kenya and offer quality education \nbased on strong moral principles. \nThe Institution was granted Letter of Interim in October 2000 opening doors for its \nfirst batch of students in the year 2002. Later, in the year 2008, the University was \nawarded, Charter by the Third President of the Republic of Kenya, His Excellency \nMwai Kibaki, making it a fully-fledged accredited University. In November 2017 \nKabarak University acquired ISO 9001:2015 certification.',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                       const  Text(
                          'On 16th May 2008 the University was awarded the Charter by the Third President of the Republic of Kenya, His Excellency Mwai Kibaki, making it a fully-fledged accredited University.',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                        Text(
                          'Why Study At Kabarak University?',
                          style: GoogleFonts.getFont(
                            'Lato',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          '• Accredited by the Commission for University Education (CUE), Kenya',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                       const  Text(
                          '• Well-equipped state-of-the-art library, ultramodern computer and Science labs',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                        const Text(
                          '• The University produces highly skilled graduates with high employment rates.',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                       const  Text(
                          '• Competent, dedicated, supportive, friendly and qualified faculty',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                        const Text(
                          '• Excellent recreational and extra-curricular facilities',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                        const Text(
                          '• Dedicated, diligent and efficient administrators',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                        const Text(
                          '• 24/7 internet connectivity, access to online journals, e-books',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                        Text(
                          '• Kabarak University is not just any other university, we are distinctive in \nour academic performance coupled with spiritual vitality.',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                        Text(
                          '• Serene, spacious and beautiful environment',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                        Text(
                          '• Spiritual growth and character development',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                        Text(
                          '• Caring and supportive Christian community',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                        Text(
                          '• Innovative and competitive programmes',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                        Text(
                          '• National and international academic standards',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    '10.2000- Opening of the University: Kabarak University was established by the second President of Kenya, H.E. Daniel Toroitich Arap Moi, This resulted from his visionary idea of setting up a Christian University that would meet the demand for higher education in Kenya and offer quality education based on strong moral principles.',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Text(
                    '2002- First student admission',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Text(
                    '5.2008- University Accreditation: On 16 May, 2008 the university was awarded the Charter by the Third President of the Republic of Kenya, His Excellency Mwai Kibaki, making it a fully-fledged accredited university.',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Text(
                    '2010- launch of the school of law',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Text(
                    '9.2014- Kabarak Online Launch (KABUO): Kabarak Univesity Online was officially opened by the Second President of Kenya the late Daniel T. arap Moi, who was also the founding Chancellor. Kabarak University Online offers online training for organizations and individuals in Africa. Its beneficiaries are either working professionals or continuing students',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Text(
                    '10.2016- Launch of School of Medicine and Health Sciences \nLaunch of School of Pharmacy',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Text(
                    '12.2017- ISO 9001:2015 Certification: Kabarak University certified by KEBs as ISO compliant. \nLaunch of New look website \nInstallation of Hon Senator Dr. Gideon Kipsielei Towett Moi as Pro-Chancellor \nInauguration of Prof. Henry Kiptiony Kiplangat as 5th Vice Chancellor',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Text(
                    '9.2018- Kabarak University awarded full license by Kenya Nutritionist and Dietician Institute (KNDI)',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Text(
                    '2.2020- Groundbreaking of the New Nakuru Town Campus Library',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Text(
                    '7.2020- Installation of Hon. Senator Dr. Gideon K T Moi as 2nd Chancellor of Kabarak University',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
