import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';

import 'movie.dart';
import 'theatre.dart';

part 'show_time.g.dart';

abstract class ShowTime implements Built<ShowTime, ShowTimeBuilder> {
   bool get isActive;
   String get id;
   Movie get movie;
   String get movieId;
   String get theatreId;
   String get room;
   DateTime get startTime;
   DateTime get endTime;
   DateTime get createdAt;
   DateTime get updatedAt;
   Theatre? get theatre;

   ShowTime._();

   factory ShowTime([void Function(ShowTimeBuilder) updates]) = _$ShowTime;

  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //         other is ShowTime &&
  //             runtimeType == other.runtimeType &&
  //             isActive == other.isActive &&
  //             id == other.id &&
  //             movie == other.movie &&
  //             movieId == other.movieId &&
  //             theatreId == other.theatreId &&
  //             room == other.room &&
  //             endTime == other.endTime &&
  //             startTime == other.startTime &&
  //             createdAt == other.createdAt &&
  //             updatedAt == other.updatedAt &&
  //             theatre == other.theatre;
  //
  // @override
  // int get hashCode =>
  //     isActive.hashCode ^
  //     id.hashCode ^
  //     movie.hashCode ^
  //     movieId.hashCode ^
  //     theatreId.hashCode ^
  //     room.hashCode ^
  //     endTime.hashCode ^
  //     startTime.hashCode ^
  //     createdAt.hashCode ^
  //     updatedAt.hashCode ^
  //     theatre.hashCode;

  @override
  String toString() {
    return 'ShowTime{isActive: $isActive, id: $id, movie: $movie, movieId: $movieId,'
        ' theatreId: $theatreId, room: $room, endTime: $endTime, startTime: $startTime,'
        ' createdAt: $createdAt, updatedAt: $updatedAt, theatre: $theatre}';
  }
}