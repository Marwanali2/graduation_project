import 'package:equatable/equatable.dart';

class AntikaModel extends Equatable {
  final int? id;
  final String? name;
  final String? image;
  final String? desc;
  final String? categoryName;
  final DateTime? createdAt;

  const AntikaModel({
    this.id,
    this.name,
    this.image,
    this.desc,
    this.categoryName,
    this.createdAt,
  });

  factory AntikaModel.fromJson(Map<String, dynamic> json) => AntikaModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        image: json['image'] as String?,
        desc: json['Desc'] as String?,
        categoryName: json['category_name'] as String?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'Desc': desc,
        'category_name': categoryName,
        'created_at': createdAt?.toIso8601String(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      image,
      desc,
      categoryName,
      createdAt,
    ];
  }
}