import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:student_orientation/models/catalogue_data.dart';
import 'package:student_orientation/screens/home_feed.dart';

class CatalogueWidget extends StatefulWidget {
  final String imagePath;
  final String title;
  final String description;
  final bool isCovered;
  final String detail;
  const CatalogueWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.isCovered,
    required this.detail,
  }) : super(key: key);

  @override
  _CatalogueWidgetState createState() => _CatalogueWidgetState();
}

class _CatalogueWidgetState extends State<CatalogueWidget> {
  @override
  Widget build(BuildContext context) {
    return buildCatalogue();
  }

  Widget buildCatalogue() {
    return Card(
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
            imageUrl: CatalogueData.myCatalogue.imagePath,
            width: 70,
            height: 100,
            fit: BoxFit.fill,
          ),
        ),
        title: Text(CatalogueData.myCatalogue.title),
        subtitle: Text(CatalogueData.myCatalogue.description),
        isThreeLine: true,
        onTap: () async {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeFeedPage()));
        },
      ),
    );
  }
}
