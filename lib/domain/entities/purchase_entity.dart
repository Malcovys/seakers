import 'package:equatable/equatable.dart';
import 'package:sneakers/domain/entities/cart_item_entity.dart';

class PurchaseEntity extends Equatable {
  final int id;
  final DateTime date;
  final List<CartItemEntity> items;
  final double amount;

  const PurchaseEntity({
    required this.id,
    required this.date,
    required this.items,
    required this.amount,
  });

  PurchaseEntity copyWith({
    int? id,
    DateTime? date,
    List<CartItemEntity>? items,
    double? amount,
  }) {
    return PurchaseEntity(
      id: id ?? this.id,
      date: date ?? this.date,
      items: items != null
          ? List<CartItemEntity>.unmodifiable(items)
          : List<CartItemEntity>.unmodifiable(this.items),
      amount: amount ?? this.amount,
    );
  }

  @override
  List<Object?> get props => [id, date, items, amount];
}