import 'dart:convert';

import 'user_response.dart';

// ignore_for_file: prefer_single_quotes

class TheatreResponse {
  TheatreResponse({
    required this.location,
    required this.isActive,
    required this.rooms,
    required this.id,
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.description,
    required this.email,
    required this.openingHours,
    required this.roomSummary,
    required this.createdAt,
    required this.updatedAt,
    required this.cover,
    required this.thumbnail,
  });

  final LocationResponse location;
  final bool isActive;
  final List<String> rooms;
  final String id;
  final String name;
  final String address;
  final String phoneNumber;
  final String description;
  final String email;
  final String openingHours;
  final String roomSummary;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String cover;
  final String thumbnail;

  factory TheatreResponse.fromRawJson(String str) =>
      TheatreResponse.fromJson(json.decode(str));

  factory TheatreResponse.fromJson(Map<String, dynamic> json) =>
      TheatreResponse(
        location: LocationResponse.fromJson(json["location"]),
        isActive: json["is_active"],
        rooms: List<String>.from(json["rooms"].map((x) => x)),
        id: json["_id"],
        name: json["name"],
        address: json["address"],
        phoneNumber: json["phone_number"],
        description: json["description"],
        email: json["email"],
        openingHours: json["opening_hours"],
        roomSummary: json["room_summary"],
        createdAt: DateTime.parse(json["createdAt"]).toLocal(),
        updatedAt: DateTime.parse(json["updatedAt"]).toLocal(),
        cover: json["cover"],
        thumbnail: json["thumbnail"],
      );

  Map<String, dynamic> toJson() {
    return {
      'location': {
        'coordinates': location.longitude == null || location.latitude == null
            ? null
            : [
                location.longitude,
                location.latitude,
              ]
      },
      'is_active': isActive,
      'rooms': rooms,
      '_id': id,
      'name': name,
      'address': address,
      'phone_number': phoneNumber,
      'description': description,
      'email': email,
      'opening_hours': openingHours,
      'room_summary': roomSummary,
      'createdAt': createdAt.toUtc().toIso8601String(),
      'updatedAt': updatedAt.toUtc().toIso8601String(),
      'cover': cover,
      'thumbnail': thumbnail,
    };
  }
}
