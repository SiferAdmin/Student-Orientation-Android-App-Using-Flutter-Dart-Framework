import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Administration extends StatefulWidget {
  Administration({Key? key}) : super(key: key);

  @override
  _AdministrationState createState() => _AdministrationState();
}

class _AdministrationState extends State<Administration> {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('Administration'),
            ),
            body:
                // Generated code for this ListView Widget...
                Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnGBqW6WIUBG1C8AeyI8G4BJemHyXmksEOkg&usqp=CAU',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: const Text(
                      'H.E Daniel T. Arap Moi, CGH \nFounder, Kabarak University \n2nd President of Kenya',
                      // style: TextStyle(
                      //   fontFamily: 'Poppins',
                      // ),
                    ),
                  ),
                  const Text(
                    'Kabarak University was founded in October 2002 by the 2nd President of Kenya, His Excellency the Late Hon. Daniel T. Arap Moi. \n \nThis was as a result of his visionary idea of setting up a Christian University that would meet the demand for higher education in Kenya and offer quality education based on strong moral principles. \n \nHis Excellency the Late Hon. Daniel T. Arap Moi also served as Chancellor of Kabarak University until his demise on 4th February 2020. \n \nHe is celebrated as a great and selfless leader who devoted his life and resources to the wellness of humanity. His lasting contribution in the education sector of Kenya is immeasurably inspiration and it is through his direct involvement in the establishment and development of Kabarak University among other leading institutions that they continue to shine today.',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://pbs.twimg.com/media/EMODeP-XYAAzBxJ.jpg',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      'Hon. Senator \nDr. Gideon Kipsielei Towett Moi \nChancellor, Kabarak University',
                      // style: TextStyle(
                      //   fontFamily: 'Poppins',
                      // ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://i0.wp.com/kabarak.ac.ke/wp-content/uploads/2017/12/Prof.-Kiplagat-VC-5.png?fit=1170%2C800&ssl=1',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      'Prof. Henry K. Kiplangat, \nPhD, MBS, OGW. \nVice Chancellor',
                      // style: TextStyle(
                      //   fontFamily: 'Poppins',
                      // ),
                    ),
                  ),
                  const Text(
                    'Governing Council',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    //   fontWeight: FontWeight.w600,
                    // ),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://i2.wp.com/kabarak.ac.ke/wp-content/uploads/2018/01/Dr.-Kibosia.jpg?fit=458%2C360&ssl=1',
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
