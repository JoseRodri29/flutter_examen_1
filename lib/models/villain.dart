// lib/models/villain.dart

class Villain {
  final String id;
  final String name;
  final String description;

  Villain({required this.id, required this.name, required this.description});

  factory Villain.fromJson(Map<String, dynamic> json) {
    return Villain(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    );
  }
}
