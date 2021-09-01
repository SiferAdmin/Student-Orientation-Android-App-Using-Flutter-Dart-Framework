import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

class Rules extends StatefulWidget {
  Rules({Key? key}) : super(key: key);

  @override
  _RulesState createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('Rules'),
            ),
            body:
                // Generated code for this ListView Widget...
                Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Text(
                    'Duration of Study',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Text(
                    '(a) The University is organized on a semester system. Two semesters constitute one academic year, unless otherwise specified for specific programs. \n(b) Each semester comprises a minimum of fifteen (15) weeks: thirteen (13) weeks of lectures and two (2) weeks of examinations.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    'Course Loading',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Text(
                    '(a) A Student may register for a Course Load of a maximum of twenty-one (21) Credit Factors in a Semester. To register for more than twenty-one (21) Credit Factors, a student must get Approval from the Dean and Head of respective Department and School. \n(b) A Student must take and pass all the required Course Work while at the University to qualify for the Award of a Bachelor’s Degree. \n(c) Candidates must fulfill any other conditions that may be stipulated by respective Schools, Institutes or Departments from which the Degree is sought.',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Text(
                    'Credit Transfer',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Text(
                    'The University accepts credit transfers from institutions recognized by the University Senate and CUE. The person intending to transfer credits shall have earned the credits not more than four years from the date of the application for transfer. \n(a) Credit Transfer for Diploma Holders \n(i) To be considered for credit transfer into an undergraduate degree programme, applicants with diplomas recognized by CUE must possess KCSE C+ or higher and the grade received in the diploma programme is C and above. \n(ii) Credit transfers are allowed for 100 (Year I) and 200 (Y2) level courses only. \n(b) Credit Transfer from Undergraduate Degree Programmes \n(i) Transfer of credit at degree level from institutions recognized by the University Senate and CUE is accepted only if the student had earned KCSE Mean Grade C+ or higher and the grade received in the degree programme is C and above.',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Text(
                    'Deferral of Studies',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Text(
                    '(a) A student who wishes to defer studies for a valid reason must complete the Deferral Request Form and submit it to the Office of the Registrar (Academic and Research). A student who defers studies without following this procedure shall be deemed to have terminated his/her studies and shall be de-registered from the University. \n(b) Students who miss the end of semester examinations due to non-clearance of fees shall be required to defer studies and register again the following semester for the units deferred. For such cases, tuition fees paid in the previous semester shall be carried forward to the next semester. \n(c) No student shall be allowed to defer admission or intermit studies for more than one academic year.',
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
