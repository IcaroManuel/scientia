class ProductModel {
  final String? id;
  final String name;
  final String brand;
  final double price;
  final int stockQuantity;

  ProductModel({
    this.id,
    required this.name,
    required this.brand,
    required this.price,
    required this.stockQuantity,
  });

  // Getter para verificar se o produto está acabando
  bool get isLowStock => stockQuantity < 5;

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      brand: json['brand'],
      price: (json['price'] as num).toDouble(),
      stockQuantity: json['stockQuantity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'brand': brand,
      'price': price,
      'stockQuantity': stockQuantity,
    };
  }
}
