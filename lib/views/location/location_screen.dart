import 'package:flutter/material.dart';
import 'package:new_nectar_ui_project/widgets/commonWidgets/common_btn.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String? selectedZone;
  String? selectedArea;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/location_screen_img/illustration.png",
              height: 220,
            ),

            const SizedBox(height: 20),

            const Text(
              "Select Your Location",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Switch on your location to stay in tune with what's happening in your area",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 40),

            // Your Zone
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Your Zone",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),

            DropdownButtonFormField<String>(
              value: selectedZone,
              decoration: const InputDecoration(
                hintText: "Select your zone",
                border: UnderlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(
                  value: "Banasree",
                  child: Text("Banasree"),
                ),
                DropdownMenuItem(
                  value: "Ahmedabad",
                  child: Text("Ahmedabad"),
                ),
                DropdownMenuItem(
                  value: "Gandhinagar",
                  child: Text("Gandhinagar"),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedZone = value;
                });
              },
            ),

            const SizedBox(height: 25),

            // Your Area
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Your Area",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),

            DropdownButtonFormField<String>(
              value: selectedArea,
              decoration: const InputDecoration(
                hintText: "Types of your area",
                border: UnderlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(
                  value: "Urban",
                  child: Text("Urban"),
                ),
                DropdownMenuItem(
                  value: "Rural",
                  child: Text("Rural"),
                ),
                DropdownMenuItem(
                  value: "Village",
                  child: Text("Village"),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedArea = value;
                });
              },
            ),

            const Spacer(),

            CommonButton(text: "Submit", onPressed: (){}),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}