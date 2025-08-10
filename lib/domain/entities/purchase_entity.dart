
import 'package:sneakers/domain/entities/basket_item_entity.dart';

class PurchaseEntity {
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
}