import 'package:equatable/equatable.dart';
import 'package:sneakers/domain/entities/basket_item_entity.dart';

class PurchaseEntity extends Equatable {
  final int id;
  final DateTime date;
  final List<BasketItemEntity> items;
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
    List<BasketItemEntity>? items,
    double? amount,
  }) {
    return PurchaseEntity(
      id: id ?? this.id,
      date: date ?? this.date,
      items: items != null
          ? List<BasketItemEntity>.unmodifiable(items)
          : List<BasketItemEntity>.unmodifiable(this.items),
      amount: amount ?? this.amount,
    );
  }

  @override
  List<Object?> get props => [id, date, items, amount];
}