import 'package:isl/models/EntrepriseModel/entreprise.dart';

class Job {
  final String? id;
  final String name;
  bool isSelected;
  final Entreprise entreprise;
  final String price;
  final String type;
  Job(
      {this.id,
      required this.name,
      this.isSelected = false,
      required this.entreprise,
      required this.price,
      required this.type});

  factory Job.fromJson(dynamic json) {
    return Job(
        name: json['name'],
        entreprise: json['entreprise'],
        price: json['price'],
        type: json['type']);
  }
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "entreprise": entreprise,
        "price": price,
        "type": type
      };

  static List<Job> jobsFromSnapshot(List snapshot) {
    return snapshot.map((data) => Job.fromJson(data)).toList();
  }

  @override
  String toString() {
    return 'Job:$id,name:$name,entreprise": $entreprise,"price": $price,"type": $type,isSelected:$isSelected';
  }
}
