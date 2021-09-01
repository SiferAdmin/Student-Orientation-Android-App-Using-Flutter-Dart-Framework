import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// ignore: unused_import
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class Facilities extends StatefulWidget {
  Facilities({Key? key}) : super(key: key);

  @override
  _FacilitiesState createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  late GoogleMapController mapController;
  late GoogleMapController mapController1;
  final LatLng _main = const LatLng(-0.16691310183830432, 35.9651646121206);
  final LatLng _town = const LatLng(-0.2781446820641475, 36.05858949622124);
  final LatLng _admin = const LatLng(-0.16701323298198928, 35.96600840083074);
  final LatLng _auditorium = const LatLng(-0.16743793616480337, 35.96680010633078);
  final LatLng _chapel = const LatLng(-0.16505359694306268, 35.965036657332526);
  final LatLng _class = const LatLng(-0.16758104267498247, 35.96607302985401);
  final LatLng _mess = const LatLng(-0.16618690826718113, 35.96618151428751);
  final LatLng _kabuo = const LatLng(-0.16578529958555668, 35.96509836373079);
  final LatLng _health = const LatLng(-0.169087092322424, 35.965308110184296);
  final LatLng _law = const LatLng(-0.1695872246786931, 35.96474485192849);
  final LatLng _library = const LatLng(-0.1686112382934857, 35.966415204015625);
  final LatLng _studentc = const LatLng(-0.1671507221627821, 35.96248841456571);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _onMapCreated1(GoogleMapController controller1) {
    mapController1 = controller1;
  }

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Facilities & Buildings'),
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
                  child: const Text(
                    'LOCATION \nMain Campus \nThe Main Campus is located 20 km north of Nakuru town, along the Nakuru-Eldama Ravine highway It stands on a 600-acre piece of land in a serene, spacious & beautiful environment with state-of-the-art facilities for residential, catering, laboratories, outdoor swimming pool ideal for physical, social, spiritual and intellectual development.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  child: GoogleMap(
                    buildingsEnabled: true,mapToolbarEnabled: true,myLocationEnabled: true,zoomControlsEnabled: true,myLocationButtonEnabled: true,
                    onMapCreated: _onMapCreated,zoomGesturesEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: _main,
                      zoom: 14.0,
                    ),
                  ),
                  
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: const Text(
                    'Nakuru Campus \nThe Nakuru Campus is located west of the Nakuru ASK Show along prison. The Campus has modern facilities which are ideal for day-scholars, part-time and evening students seeking academic and professional training during the evening and weekends.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                const Text(
                  'Nakuru Town Campus opened its doors to students in September 2006. It is situated at Kabarak Plaza along the Nakuru- Eldama Ravine highway opposite National Oil Petrol Station. This well equipped modern learning environment includes a library and computer laboratory to support degree programmes, diploma and certificate courses. Our programmes cater for the needs of all our students in terms of flexibility in the mode and in time of delivery i.e. we have full-time, and part-time (evenings and saturdays). \n \nCourses on offer \nThe Nakuru Town Campus offers the following post graduate, undergraduate degree programmes, diploma and certificate courses: \n \nMaster of Business Administration \nMaster in Information Technology \nBachelor of Business Management and Information Technology (BMIT) \nBachelor of Commerce with the following options: \nAccounting \nFinance \nHuman Resource Management and \nMarketing',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  ),
                ),
                Container(
                    height: 200,
                    child: GoogleMap(buildingsEnabled: true,mapToolbarEnabled: true,myLocationEnabled: true,zoomControlsEnabled: true,myLocationButtonEnabled: true,
                      onMapCreated: _onMapCreated1,zoomGesturesEnabled: true,
                      initialCameraPosition: CameraPosition(
                        target: _town,
                        zoom: 16,
                      ),
                      
                    )),
                    const Text('Administration'),
                //     Padding(
                //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                //   // child: const Text(
                //   //   'LOCATION \nMain Campus \nThe Main Campus is located 20 km north of Nakuru town, along the Nakuru-Eldama Ravine highway It stands on a 600-acre piece of land in a serene, spacious & beautiful environment with state-of-the-art facilities for residential, catering, laboratories, outdoor swimming pool ideal for physical, social, spiritual and intellectual development.',
                //   //   style: TextStyle(
                //   //     fontFamily: 'Poppins',
                //   //   ),
                //   // ),
                // ),
                Container(
                  height: 200,
                  child: GoogleMap(buildingsEnabled: true,mapToolbarEnabled: true,myLocationEnabled: true,zoomControlsEnabled: true,myLocationButtonEnabled: true,
                    onMapCreated: _onMapCreated,zoomGesturesEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: _admin,
                      zoom: 18.0,
                    ),
                  ),
                  
                ),
                    const Text('Auditorium'),
                    
                Container(
                  height: 200,
                  child: GoogleMap(buildingsEnabled: true,mapToolbarEnabled: true,myLocationEnabled: true,zoomControlsEnabled: true,myLocationButtonEnabled: true,
                    onMapCreated: _onMapCreated,zoomGesturesEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: _auditorium,
                      zoom: 18.0,
                    ),
                  ),
                  
                ),
                    const Text('Chapel'),
                    
                Container(
                  height: 200,
                  child: GoogleMap(buildingsEnabled: true,mapToolbarEnabled: true,myLocationEnabled: true,zoomControlsEnabled: true,myLocationButtonEnabled: true,
                    onMapCreated: _onMapCreated,zoomGesturesEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: _chapel,
                      zoom: 18.0,
                    ),
                  ),
                  
                ),
                    const Text('School of Law'),
                    
                Container(
                  height: 200,
                  child: GoogleMap(buildingsEnabled: true,mapToolbarEnabled: true,myLocationEnabled: true,zoomControlsEnabled: true,myLocationButtonEnabled: true,
                    onMapCreated: _onMapCreated,zoomGesturesEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: _law,
                      zoom: 18.0,
                    ),
                  ),
                  
                ),
                    const Text('Lecture Halls'),
                   
                Container(
                  height: 200,
                  child: GoogleMap(buildingsEnabled: true,mapToolbarEnabled: true,myLocationEnabled: true,zoomControlsEnabled: true,myLocationButtonEnabled: true,
                    onMapCreated: _onMapCreated,zoomGesturesEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: _class,
                      zoom: 18.0,
                    ),
                  ),
                  
                ),
                    const Text('Mess'),
                    
                Container(
                  height: 200,
                  child: GoogleMap(buildingsEnabled: true,mapToolbarEnabled: true,myLocationEnabled: true,zoomControlsEnabled: true,myLocationButtonEnabled: true,
                    onMapCreated: _onMapCreated,zoomGesturesEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: _mess,
                      zoom: 18.0,
                    ),
                  ),
                  
                ),
                    const Text('School of Health Science'),
                    
                Container(
                  height: 200,
                  child: GoogleMap(buildingsEnabled: true,mapToolbarEnabled: true,myLocationEnabled: true,zoomControlsEnabled: true,myLocationButtonEnabled: true,
                    onMapCreated: _onMapCreated,zoomGesturesEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: _health,
                      zoom: 18.0,
                    ),
                  ),
                  
                ),
                    const Text('KABUO'),
                   
                Container(
                  height: 200,
                  child: GoogleMap(buildingsEnabled: true,mapToolbarEnabled: true,myLocationEnabled: true,zoomControlsEnabled: true,myLocationButtonEnabled: true,
                    onMapCreated: _onMapCreated,zoomGesturesEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: _kabuo,
                      zoom: 18.0,
                    ),
                  ),
                  
                ),
                    const Text('Library'),
                    
                Container(
                  height: 200,
                  child: GoogleMap(buildingsEnabled: true,mapToolbarEnabled: true,myLocationEnabled: true,zoomControlsEnabled: true,myLocationButtonEnabled: true,
                    onMapCreated: _onMapCreated,zoomGesturesEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: _library,
                      zoom: 18.0,
                    ),
                  ),
                  
                ),
                    const Text('Student Centre'),
                    
                Container(
                  height: 200,
                  child: GoogleMap(buildingsEnabled: true,mapToolbarEnabled: true,myLocationEnabled: true,zoomControlsEnabled: true,myLocationButtonEnabled: true,
                    onMapCreated: _onMapCreated,zoomGesturesEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: _studentc,
                      zoom: 18.0,
                    ),
                  ),
                  
                ),
                    
              ],
            ),
          ),
        ),
      ),
    );
  }
}
