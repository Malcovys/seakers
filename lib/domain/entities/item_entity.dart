import 'package:equatable/equatable.dart';

class ItemEntity extends Equatable{
  final int id;
  final String label;
  final double price;
  final int quantity;
  final String description;

  const ItemEntity({
    required this.id,
    required this.label,
    required this.description,
    required this.price,
    required this.quantity,
  });

  ItemEntity copyWith({int? id, String? label, double? price, int? quantity, String? description}){
    return ItemEntity(
      id: id ?? this.id, 
      label: label ?? this.label, 
      description: description ?? this.description, 
      price: price ?? this.price, 
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  List<Object?> get props => [
      id,
      label,
      description,
      price,
      quantity,
    ];
}