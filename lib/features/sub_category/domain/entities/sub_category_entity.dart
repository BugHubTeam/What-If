import 'package:equatable/equatable.dart';

class SubCategoryEntity extends Equatable {
  final String name;
  final String image;
  const SubCategoryEntity({required this.name, required this.image});
  @override
  List<Object?> get props => [name, image];

  factory SubCategoryEntity.fromJson(Map<String, dynamic> json,
      {required bool isPlayer}) {
    return SubCategoryEntity(
      name: json[isPlayer ? 'player' : 'club'],
      image: json[isPlayer ? 'player_logo' : 'club_logo'],
    );
  }
}
