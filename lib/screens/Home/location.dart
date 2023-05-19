import 'package:flutter/material.dart';
import 'package:green_life/sheard.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen ({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late GoogleMapController mapController;

  static const LatLng _center = const LatLng(45.521563, -122.677433);
  final Set<Marker> _markers = {};

  LatLng _lastMapPosition = _center;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId(_lastMapPosition.toString()),
          position: _lastMapPosition,
          infoWindow: InfoWindow(
            title: 'Your Location',
            snippet: 'This is where you are',
          ),
          icon: BitmapDescriptor.defaultMarker,
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sharedText(txt: 'Your Nearest RVM',fontSize: 22),
            TextFormField(

              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(backgroundColor: kPrimaryColor,child: Icon(Icons.search)),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Enter an address'
              ),
            ),
          // Container(
          //   height: 300,
          //   width: double.infinity,
          //   child: GoogleMap(
          //     onMapCreated: _onMapCreated,
          //     initialCameraPosition: CameraPosition(
          //       target: _center,
          //       zoom: 7.0,
          //     ),
          //     markers: _markers,
          //     onTap: (LatLng location){
          //       setState(() {
          //         _markers.clear();
          //         _lastMapPosition = location;
          //         _markers.add(
          //           Marker(
          //             markerId: MarkerId(location.toString()),
          //             position: location,
          //             infoWindow: InfoWindow(
          //               title: 'Your Location',
          //               snippet: 'This is where you are',
          //             ),
          //             icon: BitmapDescriptor.defaultMarker,
          //           ),
          //         );
          //       });
          //     },
          //   ),
          // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  sharedText(txt: 'Yor Favorite'),
                  sharedText(txt: 'View All',color: Colors.red),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) =>Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            sharedText(txt: 'RVM Model 201',color: Colors.white),
                            sharedText(txt: 'Online',color: Colors.white),
                          ],
                        ),
                        height: 60,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(20) ,topRight: Radius.circular(20))
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: sharedText(txt: 'Mall of Egypt 6th October City'),
                      ),
                      Container(
                        height: 150,
                        child: GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          childAspectRatio: (1 / .4),

                          children: [
                            ListTile(title: sharedText(txt: 'Access',color: Colors.grey,fontSize: 18),subtitle: Row(children: [Icon(Icons.group),SizedBox(width: 2,),sharedText(txt: 'public',color: Colors.orange)],),),
                            ListTile(title: sharedText(txt: 'Free Parking',color: Colors.grey,fontSize: 18),subtitle: Row(children: [Icon(Icons.car_rental),SizedBox(width: 2,),sharedText(txt: '30 min',color: Colors.orange)],),),
                            ListTile(title: sharedText(txt: 'Operating Hours',color: Colors.grey,fontSize: 18),subtitle: Row(children: [Icon(Icons.access_time_rounded),SizedBox(width: 2,),sharedText(txt: '10:00am - 12:00pm',color: Colors.orange,fontSize: 12)],),),
                          ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Divider(thickness: 2,color: Colors.grey,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.heart_broken,color:kPrimaryColor,),
                                Icon(Icons.share,),
                                Icon(Icons.next_plan_outlined,),
                              ],
                            ),
                            Row(
                              children: [
                                sharedText(txt: 'see details'),
                                Icon(Icons.label_important_outline)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                itemCount: 3,
                ),
            )
          ],
        ),
      ),
    );
  }
}
