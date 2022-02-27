import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';

import 'location.dart';

part 'theatre.g.dart';

abstract class Theatre implements Built<Theatre, TheatreBuilder> {
   Location get location;
   bool get isActive;
   BuiltList<String> get rooms;
   String get id;
   String get name;
   String get address;
   String get phoneNumber;
   String get description;
   String? get email;
   String get openingHours;
   String get roomSummary;
   DateTime get createdAt;
   DateTime get updatedAt;
   String get cover;
   String get thumbnail;

   Theatre._();

   factory Theatre([void Function(TheatreBuilder) updates]) = _$Theatre;

  @override
  String toString() =>
      'Theatre{location: $location, isActive: $isActive, rooms: $rooms, id: $id,'
          ' name: $name, address: $address, phoneNumber: $phoneNumber, description:'
          ' $description, email: $email, openingHours: $openingHours, roomSummary: $roomSummary,'
          ' createdAt: $createdAt, updatedAt: $updatedAt, cover: $cover, thumbnail: $thumbnail}';
}