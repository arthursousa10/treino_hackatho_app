import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hackathon/models/drogaboa.dart';

class FirestoreService {
  final CollectionReference remedios =
      FirebaseFirestore.instance.collection("Remedio");

  Stream<QuerySnapshot> getRemedioStream() {
    final remediosStream = remedios.orderBy('name').snapshots();
    return remediosStream;
  }
}