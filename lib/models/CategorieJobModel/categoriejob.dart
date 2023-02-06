import '../JobModel/job.dart';

class CategorieJob {
  final String? id;
  final List<Job> jobs;
  final String name;
  bool isSelected;

  CategorieJob({
    this.id,
    required this.jobs,
    required this.name,
    this.isSelected = false,
  });

  factory CategorieJob.fromJson(dynamic json) {
    return CategorieJob(
      jobs: json['jobs'],
      name: json['name'],
    );
  }
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "jobs": jobs,
      };

  static List<CategorieJob> categorieJobFromSnapshot(List snapshot) {
    return snapshot.map((data) => CategorieJob.fromJson(data)).toList();
  }

  @override
  String toString() {
    return 'CategorieJob:$id,"name": $name,"jobs": $jobs';
  }
}
