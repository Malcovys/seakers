
import 'package:equatable/equatable.dart';
class CartItemEntity extends Equatable {
  final int itemId;
  final int quantity;

  const CartItemEntity({
    required this.itemId,
    required this.quantity,
  });

  CartItemEntity copyWith({int? itemId, int? quantity}) {
    return CartItemEntity(
      itemId: itemId ?? this.itemId, 
      quantity: quantity ?? this.quantity
    );
  }

  @override
  List<Object?> get props => [
    itemId,
    quantity
  ];
}