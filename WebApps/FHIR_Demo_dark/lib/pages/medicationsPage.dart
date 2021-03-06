import 'package:FHIR_Demo/services/medicationService.dart';
import 'package:flutter/material.dart';
import '../bloc/navigation_bloc/navigation_bloc.dart';

class MedicationsPage extends StatefulWidget with NavigationStates {
  @override
  _MedicationsPage createState() => _MedicationsPage();
}

class _MedicationsPage extends State<MedicationsPage> {
  @override
  Widget build(BuildContext context) {
    print("Inside medication page =========================");
    print(medicationListForCard);
    print("Inside medication page =========================");
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // here the desired height

        child: AppBar(
          backgroundColor: Colors.grey[850],
          centerTitle: true, // this is all you need
          title: Text(
            "Medications",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(45, 20, 45, 20),
        child: Column(
          children: medicationListForCard.map((medication) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                color: Colors.grey[700],
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Medication Name: ",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            medication["MedicationName"],
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 15.0,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Medication Status: ",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            medication["MedicationStatus"],
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 15.0,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
