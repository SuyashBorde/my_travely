import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/hotel.dart';

class HotelService {
  static const String _baseUrl = 'https://api.mytravaly.com/public/v1/hotels';
  static const String _authToken = '71523fdd8d26f585315b4233e39d9263';

  static Future<List<Hotel>> searchHotels(String query, int page, int limit) async {
    // Using sample data instead of API call due to invalid API key
    await Future.delayed(Duration(milliseconds: 500)); // Simulate network delay
    
    final allHotels = getSampleHotels();
    
    // Filter hotels based on query
    final filteredHotels = allHotels.where((hotel) {
      return hotel.name.toLowerCase().contains(query.toLowerCase()) ||
             hotel.city.toLowerCase().contains(query.toLowerCase()) ||
             hotel.state.toLowerCase().contains(query.toLowerCase());
    }).toList();
    
    return filteredHotels;
  }

  static List<Hotel> getSampleHotels() {
    return [
      Hotel(
        id: '1',
        name: 'Grand Plaza Hotel',
        city: 'New York',
        state: 'NY',
        country: 'USA',
        rating: 4.5,
        price: 250,
        image: 'https://images.unsplash.com/photo-1566073771259-6a8506099945',
      ),
      Hotel(
        id: '2',
        name: 'Sunset Resort',
        city: 'Miami',
        state: 'FL',
        country: 'USA',
        rating: 4.8,
        price: 320,
        image: 'https://images.unsplash.com/photo-1582719508461-905c673771fd',
      ),
      Hotel(
        id: '3',
        name: 'Mountain View Lodge',
        city: 'Denver',
        state: 'CO',
        country: 'USA',
        rating: 4.3,
        price: 180,
        image: 'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb',
      ),
      Hotel(
        id: '4',
        name: 'Ocean Breeze Hotel',
        city: 'San Diego',
        state: 'CA',
        country: 'USA',
        rating: 4.6,
        price: 280,
        image: 'https://images.unsplash.com/photo-1571896349842-33c89424de2d',
      ),
      Hotel(
        id: '5',
        name: 'City Center Inn',
        city: 'Chicago',
        state: 'IL',
        country: 'USA',
        rating: 4.2,
        price: 200,
        image: 'https://images.unsplash.com/photo-1564501049412-61c2a3083791',
      ),
    ];
  }
}