import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Schools extends StatefulWidget {
  Schools({Key? key}) : super(key: key);

  @override
  _SchoolsState createState() => _SchoolsState();
}

class _SchoolsState extends State<Schools> {
  final pageViewController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Schools'),
          ),
          body: Center(
              child:
                  // Generated code for this PageView Widget...
                  Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                  child: PageView(
                    controller: pageViewController,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Text(
                                'SCHOOL OF BUSINESS & ECONOMICS',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'Doctor of Philosophy in Business Administration',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '(offered through course work & thesis) \nSPECIALIZATIONS \n• Accounting \n• Strategic Management \n• Human Resource Management \n• Finance \n• Marketing \n• Entrepreneurship \n• Management Information Systems \n• Operations Management',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Minimum Admission Requirements:',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Master of Business Administration or equivalent Master’s degree in the relevant area.',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Campus: Nakuru',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Tution Fees per semester: 144,000 \nDuration: 3 years',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Doctor of Philosophy in Business Administration',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '(offered through course work & thesis)',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Minimum Admission Requirements:',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Bachelor’s degree Second Class Honours (Upper \nDivision) in Finance, Accounting, Banking, Insurance, and \nEconomics or its equivalent; OR Lower Division with 2 \nyears of relevant work experience after graduation.',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Campus: Nakuru',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Tution Fees per semester: 144,000 \nDuration: 3 years',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Master of Business Administration (MBA)',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'SPECIALIZATIONS: \n• Accounting \n• Strategic Management \n• Human Resource Management \n• Finance \n• Marketing \n• Entrepreneurship \n• Management Information Systems (MIS) \n• Operations Management',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Minimum Admission Requirements:',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Bachelor’s degree Second Class Honours (Upper Division), \nor Lower Division with 2 years of relevant work experience \nafter graduation.',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Campus: Nakuru',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Text(
                                'SCHOOL OF SCIENCE, ENGINEERING & TECHNOLOGY',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'Programme',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Doctor of Philosophy in IT',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Minimum Admission Requirements: Masters degree from recognized institutions with specialization in \nComputer Science/IT or related areas.',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Campus: Nakuru',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Tuition Fees per \nsemester: KShs 144,000',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Duration: 3 years',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Text(
                                'SCHOOL OF EDUCATION',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'Programme',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Doctor of Philosophy in Education \nOPTIONS \n• Management and Leadership \n• Guidance & Counseling \n• Counseling Psychology \n• Education Communication \nTechnology \n• Educational Psychology \n• Curriculum studies',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Minimum Admission Requirements: Master of Education or Master of Philosophy in Education \nAdministration and Management, Management and Leadership, \nGuidance and Counselling, Curriculum Studies, Education \nCommunication and Technology and Education Psychology, OR \nany other relevant Masters of Education degrees from Kabarak \nUniversity OR any other university recognized by CUE.',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Campus: Main & Nakuru',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Tuition Fees per \nsemester: KShs 144,00',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Duration: 3 years',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Text(
                                'SCHOOL OF MEDICINE & HEALTH SCIENCES',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'Programme',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Master of Medicine in Family Medicine',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Minimum Admission Requirements: Bachelor of Medicine and Surgery (M.B.Ch.B.) degree or an equivalent degree; \nregistered or meets the requirements for registration by the Medical Practitioners \nand Dentists Board of Kenya; pass an admission examination and interview \nadministered by the Department of Family Medicine.',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Campus: Main',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Tuition Fees per \nsemester: KShs 90,000(regular)',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Duration: 4 years',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Text(
                                'SCHOOL OF PHARMACY',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'Programme',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Bachelor of Pharmacy',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Minimum Admission Requirements: KCSE mean grade of B- (Minus) with C+ in Mathematics or Physics, \nBiology, Chemistry, English or Kiswahili; OR Diploma in Pharmaceutical \nTechnology and KCSE mean grade of C+ and enrolled with the Pharmacy \nand Poisons Board (PPB).',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Campus: Main',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Tuition Fees per \nsemester: KShs 117,500',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Duration: 5 years',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Text(
                                'SCHOOL OFLAW',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'Programme',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Bachelor of Laws',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Minimum Admission Requirements: KCSE mean grade of C+ with B (plain) in English or Kiswahili.',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Campus: Main',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Tuition Fees per \nsemester: KShs 117,500',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Duration: 5 years',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            )
                          ],
                        ),
                      ),
                      ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Text(
                              'SCHOOL OF MUSIC & PERFORMING ARTS',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Text(
                                'ICT SHORT COURSES',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'Program',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Cisco/CompTIA IT Essentials (PC Hardware & Software)',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Tution: KSh. 10,000 inclusive of exams & certification',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Duration: 80 Hours',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Program',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'CCNA 1 Cisco Routing & Switching: Introduction to \nNetworks',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Pre-requisites: Cisco/CompTIA IT Essentials (PC Hardware & Software)',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Tution: KSh. 10,000 inclusive of exams & certification',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Duration: 60 Hours',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Program',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'CCNA 2 Routing & Switching Essentials',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Pre-requisites: CCNA 1',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Tution: KSh. 10,000 inclusive of exams & certification',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Duration: 60 Hours',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Program',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'CCNA 3 Routing & Switching: Scaling Networks',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Pre-requisites: CCNA 2',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Tution: KSh. 10,000 inclusive of exams & certification',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Duration: 60 Hours',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Program',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Cybersecurity (Cyberops Associate)',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Pre-requisites: CCNA 3',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Tution: KSh. 15,000 inclusive of module exams & certification',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Duration: 60 Hours',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Program',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'CCNP Enterprise - 1.Core Networking \n(ENCOR) 2. Advanced Routers (ENARSI)',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Pre-requisites: CCNA Certified',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Tution: KSh. 30,000 inclusive of module exams & certification',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Duration: 60 Hours per module',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Program',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Certifcate in computer applications',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Ksh. 5000',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              'Duration: 40 Hours',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0, 1),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: SmoothPageIndicator(
                      controller: pageViewController,
                      count: 8,
                      axisDirection: Axis.horizontal,
                      onDotClicked: (i) {
                        pageViewController.animateToPage(
                          i,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      effect: ExpandingDotsEffect(
                        expansionFactor: 3,
                        spacing: 8,
                        radius: 16,
                        dotWidth: 16,
                        dotHeight: 16,
                        dotColor: Color(0xFF9E9E9E),
                        activeDotColor: Color(0xFF3F51B5),
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
