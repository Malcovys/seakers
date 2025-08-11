
import 'package:equatable/equatable.dart';
class BasketItemEntity extends Equatable {
  final int itemId;
  final int quantity;

  const BasketItemEntity({
    required this.itemId,
    required this.quantity,
  });

  BasketItemEntity copyWith({int? itemId, int? quantity}) {
    return BasketItemEntity(
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