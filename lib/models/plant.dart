class Plant {
  final String name;
  final String category;
  final double price;
  final String image;
  final double rating;
  final bool isFavorite;

  const Plant({
    required this.name,
    required this.category,
    required this.price,
    required this.image,
    required this.rating,
    this.isFavorite = false,
  });
}