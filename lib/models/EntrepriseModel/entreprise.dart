class Entreprise {
  final String? id;
  final String nom;
  final String logo;
  final String country;

  Entreprise(
      {this.id, required this.nom, required this.logo, required this.country});

  factory Entreprise.fromJson(dynamic json) {
    return Entreprise(
      nom: json['nom '],
      logo: json['logo'],
      country: json['country'],
    );
  }
  Map<String, dynamic> toJson() => {
        "id": id,
        "nom": nom,
        "logo": logo,
        "country": country,
      };

  static List<Entreprise> entreprisesFromSnapshot(List snapshot) {
    return snapshot.map((data) => Entreprise.fromJson(data)).toList();
  }

  @override
  String toString() {
    return 'Entreprise:$id,"nom": $nom,"logo": $logo,"country": $country';
  }
}
