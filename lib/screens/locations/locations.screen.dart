import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:rider/contants/index.dart';
import 'package:rider/routes/routes.names.dart';
import 'package:rider/widgets/buttons/index.dart';

class LocationsScreen extends StatefulWidget {
  const LocationsScreen({super.key});
  @override
  _LocationsScreenState createState() => _LocationsScreenState();
}

class _LocationsScreenState extends State<LocationsScreen> {
  final TextEditingController currentLocationController =
      TextEditingController();
  final TextEditingController destinationController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  LatLng? currentLocation;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    LocationData? locationData;
    try {
      locationData = await Location().getLocation();
    } catch (e) {
      locationData = null;
    }

    if (locationData != null) {
      setState(() {
        // currentLocation = LatLng(locationData.latitude, locationData.longitude);
        // currentLocationController.text = "(${currentLocation.latitude}, ${currentLocation.longitude})";
      });
    } else {
      // Handle location retrieval error
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => context.goNamed(home),
          child: Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(color: primaryColor, fontSize: 16),
        elevation: 0.0,
        title: const Text(
          'Search Location',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildFormField(
              controller: currentLocationController,
              hintText: 'Current Location',
              icon: Icons.location_on,
              enabled: false,
            ),
            const SizedBox(height: 16),
            _buildFormField(
              controller: destinationController,
              hintText: 'Destination',
              icon: Icons.location_searching,
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text('Select Date'),
              subtitle: const Text('2023-12-12'),
              onTap: () => _selectDate(context),
              leading: const Icon(Icons.calendar_today),
            ),
            const SizedBox(height: 16),
            MainButton(
              title: 'Search',
              onTap: () => context.goNamed(location_results),
              isLoading: false,
              backgroundColor: primaryColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
    bool enabled = true,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        enabled: enabled,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
        ),
      ),
    );
  }
}
