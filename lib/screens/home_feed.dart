import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:student_orientation/screens/history.dart';

import 'academic.dart';
import 'administartion.dart';
import 'facilities.dart';
import 'fee.dart';
import 'management.dart';
import 'outline.dart';
import 'rules.dart';
import 'schools.dart';

class HomeFeedPage extends StatefulWidget {
  HomeFeedPage({Key? key}) : super(key: key);

  @override
  _HomeFeedPageState createState() => _HomeFeedPageState();
}

class _HomeFeedPageState extends State<HomeFeedPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl:
                  'https://authorstech.com/wp-content/uploads/2017/01/6books222-page-001.jpg',
              width: 70,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          title: const Text('Outline'),
          subtitle: Text(
              'A summary of the contents that are relevant and applicable to this orientation programme'),
          isThreeLine: false,
          onTap: () async {
            await Navigator.push(
                context, MaterialPageRoute(builder: (context) => Outline()));
          },
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl:
                  'https://gawughanatuc.org/wp-content/uploads/2020/01/bigstock-History-56161577-620x423.jpg',
              width: 70,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          title: const Text('History'),
          subtitle: Text(
              'An extensive look and the university history and past events that remain important in maintaining the culture and standards of the university '),
          isThreeLine: false,
          onTap: () async {
            await Navigator.push(
                context, MaterialPageRoute(builder: (context) => History()));
          },
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl:
                  'https://research-methodology.net/wp-content/uploads/2014/11/Role-of-Administration-in-Management.png',
              width: 70,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          title: const Text('Administration'),
          subtitle: Text(
              'An extensive breakdown of how the University administration is laid out while describing their roles'),
          isThreeLine: false,
          onTap: () async {
            await Navigator.push(context,
                MaterialPageRoute(builder: (context) => Administration()));
          },
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl:
                  'https://www.yourarticlelibrary.com/wp-content/uploads/2013/09/201.jpg',
              width: 70,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          title: const Text('Management'),
          subtitle: Text(
              'Depicts the various skilled and professional individuals tasked with ensuring services and roles are conducted as needed'),
          isThreeLine: false,
          onTap: () async {
            await Navigator.push(
                context, MaterialPageRoute(builder: (context) => Management()));
          },
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTctGLXN0qGt4eFVH3CxW9VEIyjKau_SI8kQw&usqp=CAU',
              width: 70,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          title: const Text('Facilities and Buildings'),
          subtitle: Text(
              'Contains descriptions and insights about the facilities the university has together with the mapped geographical locations of the buildings present'),
          isThreeLine: false,
          onTap: () async {
            await Navigator.push(
                context, MaterialPageRoute(builder: (context) => Facilities()));
          },
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl:
                  'https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fdam%2Fimageserve%2F1166019137%2F960x0.jpg%3Ffit%3Dscale',
              width: 70,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          title: const Text('Schools'),
          subtitle: Text(
              'Comprises a description of the various learning courses categorized into different related and unrelated schools'),
          isThreeLine: false,
          onTap: () async {
            await Navigator.push(
                context, MaterialPageRoute(builder: (context) => Schools()));
          },
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu7ic9SUCUCRTEkVb1Ardy9HoTXBbPh0lee6I_8dMwgCjBK5iFzYIY2IZ_vxO5gYhz0L0&usqp=CAU',
              width: 70,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          title: const Text('Academic Programmes Offered'),
          subtitle: Text(
              'Details the Requirements and Course outlines for several academic programmes that are offered in the institution'),
          isThreeLine: false,
          onTap: () async {
            await Navigator.push(
                context, MaterialPageRoute(builder: (context) => Academic()));
          },
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv8ErFKI1oAs3xvdTj1XRUDtkfFEKf_8CkwiNGXEdmjGN0xGWolxmo3LGi7XaH8kHM4Qw&usqp=CAU',
              width: 70,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          title: const Text('Rules and Regulations Governing Academic Affairs'),
          subtitle: Text(
              'Spells out the university policies, rules and regulations upon which all the university stakeholders and community must adhere to'),
          isThreeLine: false,
          onTap: () async {
            await Navigator.push(
                context, MaterialPageRoute(builder: (context) => Rules()));
          },
        ),
      ),
      Card(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzWWejMyefphu-0L5Qey1_21F-KIU2IcVJwA&usqp=CAU',
              width: 70,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          title: const Text('Fee Payment'),
          subtitle: Text(
              'Contains information of the fee structures for various academic and extra-cirriculum programmes while also specifies the modes of payment that are acceptable'),
          isThreeLine: false,
          onTap: () async {
            await Navigator.push(
                context, MaterialPageRoute(builder: (context) => Fee()));
          },
        ),
      ),
    ]);
  }
}
