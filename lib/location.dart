import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late LocationData _locationData;
  double villageLatitude = 12.3456; // Replace with the latitude of your village
  double villageLongitude = 78.9101; // Replace with the longitude of your village

  @override
  void initState() {
    super.initState();
    _getVillageLocation();
  }

  Future<void> _getVillageLocation() async {
    setState(() {
      _locationData = LocationData.fromMap({
        "latitude": villageLatitude,
        "longitude": villageLongitude,
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Village Location'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_locationData != null)
              Text(
                'Latitude: ${_locationData.latitude}, Longitude: ${_locationData.longitude}',
                style: TextStyle(fontSize: 20),
              ),
            SizedBox(height: 20),
            Icon(
              Icons.location_on,
              size: 50,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
