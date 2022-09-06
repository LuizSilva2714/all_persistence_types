import 'package:cloud_firestore/cloud_firestore.dart';

class Car {
  final String name;
  final String brand;

  DocumentReference? reference;

  Car({
    required this.name,
    required this.brand
  });

  //Extension: extensão de um tipo primitivo, permitindo sua customização. A partir dessa extensão, todos desse tipo primitivo incorporarão os atributos/métodos da extensão
  Car.fromMap(Map<String, dynamic> map, {this.reference}) : name = map['name'], brand = map['brand'];

  Car.fromSnapshot(QueryDocumentSnapshot snapshot) :
  this.fromMap(snapshot.data() as Map<String, dynamic>, reference: snapshot.reference);

  Map<String, dynamic> toJson() => {
    "name": name,
    "brand": brand
  };
}