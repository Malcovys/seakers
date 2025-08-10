
import 'package:sneakers/domain/entities/basket_item_entity.dart';

class BasketEntity {
  final int id;
  final int userId;
  final List<BasketItemEntity>? items;

  const BasketEntity({
    required this.id,
    required this.userId,
    this.items,
  });
}