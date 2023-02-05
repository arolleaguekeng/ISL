class Job {
  final String? id;
  final String name;
  final String image;
  bool isSelected;
  Job(
      {this.id,
      required this.name,
      required this.image,
      this.isSelected = false});

  factory Job.fromJson(dynamic json) {
    return Job(
        id: json['id'] as String,
        name: json['name'] as String,
        image: json['image'] as String);
  }
  Map<String, dynamic> toJson() => {"id": id, "name": name, "image": image};

  static List<Job> usersFromSnapshot(List snapshot) {
    return snapshot.map((data) => Job.fromJson(data)).toList();
  }

  @override
  String toString() {
    return 'Job:$id,name:$name,image:$image,isSelected:$isSelected';
  }
}
