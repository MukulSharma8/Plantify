class Plant {
  final int id;
  final String name;
  final String image;
  final String category;
  final List<String> sunlight;

  Plant({
    required this.id,
    required this.name,
    required this.image,
    required this.category,
    required this.sunlight,
  });

  factory Plant.fromJson(Map<String, dynamic> json) {
    return Plant(
      id: json['id'],
      name: json['common_name'] ?? "Unknown",
      image: json['default_image']?['regular_url'] ?? "",
      category: (json['scientific_name'] as List?)?.first ?? "Unknown",
      sunlight: List<String>.from(json['sunlight'] ?? []),
    );
  }
}