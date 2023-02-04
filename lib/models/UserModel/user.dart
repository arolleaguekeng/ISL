import '../ProfileModel/profile.dart';

class User {
  final String? id;
  final String matricule;
  final Profile? profile;

  User({this.id, required this.matricule, required this.profile});
}
