
import 'package:equatable/equatable.dart';
import 'package:sneakers/domain/entities/basket_item_entity.dart';

class BasketEntity extends Equatable {
  final int id;
  final int userId;
  final List<BasketItemEntity>? items;

  const BasketEntity({
    required this.id,
    required this.userId,
    this.items,
  });

  BasketEntity copyWith({int? id, int? userId, List<BasketItemEntity>? items}) {
    return BasketEntity(
      id: id ?? this.id, 
      userId: userId ?? this.userId,
      items: items ?? (
        this.items == null 
        ? null 
        : List<BasketItemEntity>.unmodifiable(this.items!)
      )
    );
  }

  @override
  List<Object?> get props => [
    id,
    userId,
    items,
  ];
}