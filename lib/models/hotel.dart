class Hotel {
  final String id;
  final String name;
  final String city;
  final String state;
  final String country;
  final double rating;
  final double price;
  final String image;

  Hotel({
    required this.id,
    required this.name,
    required this.city,
    required this.state,
    required this.country,
    required this.rating,
    required this.price,
    required this.image,
  });

  factory Hotel.fromJson(Map<String, dynamic> json) {
    return Hotel(
      id: json['id']?.toString() ?? '',
      name: json['name'] ?? 'Unknown Hotel',
      city: json['city'] ?? json['location']?['city'] ?? '',
      state: json['state'] ?? json['location']?['state'] ?? '',
      country: json['country'] ?? json['location']?['country'] ?? '',
      rating: (json['rating'] ?? json['averageRating'] ?? 0).toDouble(),
      price: (json['price'] ?? json['pricePerNight'] ?? 0).toDouble(),
      image: json['image'] ?? json['imageUrl'] ?? json['images']?[0] ?? '',
    );
  }
}