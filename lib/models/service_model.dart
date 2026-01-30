class ServiceModel {
  final String? id;
  final String name;
  final String description;
  final double price;
  final int durationInMinutes; // Guardamos em minutos para facilitar o cálculo

  ServiceModel({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.durationInMinutes,
  });

  String get formattedDuration {
    final hours = durationInMinutes ~/ 60;
    final minutes = durationInMinutes % 60;
    if (hours > 0) {
      return '${hours}h ${minutes > 0 ? '${minutes}min' : ''}';
    }
    return '${minutes}min';
  }

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: (json['price'] as num).toDouble(),
      durationInMinutes: json['durationInMinutes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'durationInMinutes': durationInMinutes,
    };
  }
}
