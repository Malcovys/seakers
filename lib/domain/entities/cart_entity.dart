
import 'package:equatable/equatable.dart';
import 'package:sneakers/domain/entities/cart_item_entity.dart';

class CartEntity extends Equatable {
  final int id;
  final int userId;
  final List<CartItemEntity>? items;

  const CartEntity({
    required this.id,
    required this.userId,
    this.items,
  });

  CartEntity copyWith({int? id, int? userId, List<CartItemEntity>? items}) {
    return CartEntity(
      id: id ?? this.id, 
      userId: userId ?? this.userId,
      items: items ?? (
        this.items == null 
        ? null 
        : List<CartItemEntity>.unmodifiable(this.items!)
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