import 'package:equatable/equatable.dart';

class CategoriesAntika extends Equatable {
  final int id;
  final String name;
  final String image;
  final String desc;
  final String categoryName;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;

  const CategoriesAntika({
    required this.id,
    required this.name,
    required this.image,
    required this.desc,
    required this.categoryName,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CategoriesAntika.fromJson(Map<String, dynamic> json) {
    return CategoriesAntika(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
      desc: json['Desc'] as String,
      categoryName: json['category_name'] as String,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'Desc': desc,
        'category_name': categoryName,
        'status': status,
        'created_at': createdAt.toIso8601String(),
        'updated_at': updatedAt.toIso8601String(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      image,
      desc,
      categoryName,
      status,
      createdAt,
      updatedAt,
    ];
  }
}
