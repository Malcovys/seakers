

class ItemEntity {
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

  List<Object?> get props => [
      id,
      label,
      description,
      price,
      quantity,
    ];
}