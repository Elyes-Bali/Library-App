import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:library_app/consttants.dart';
import 'package:library_app/screens/home_screen.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  final _controllerName = TextEditingController();
  final _controllerQuantity = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(''),
        actions: [],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TextField(
            controller: _controllerName,
            decoration: InputDecoration(
              hintText: "book name",
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          TextField(
            controller: _controllerQuantity,
            decoration: InputDecoration(
              hintText: "Quantity",
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 32),
          ElevatedButton(
              onPressed: () {
                Map<String, String> dataToSave = {
                  "name": _controllerName.text,
                  "quantity": _controllerQuantity.text,
                };
                FirebaseFirestore.instance
                    .collection("books")
                    .add(dataToSave)
                    .then((value) {
                  _showNotification("Data added successfully!");
                  _controllerName.clear();
                  _controllerQuantity.clear();
                }).catchError((error) {
                  _showNotification("Error: Failed to add data.");
                });
              },
              child: Text("Create"))
        ],
      ),
    );
  }

  void _showNotification(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Data Added Successfuly"),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
