import 'package:built_collection/built_collection.dart';

import '../model/category.dart';
import '../model/person.dart';

import '../model/movie.dart';

abstract class MovieRepository {
  Future<BuiltList<Movie>> getListMovie(int page, int perPage);

  Future<BuiltList<Category>> getListCategory();

  Future<BuiltList<Person>> getListSearchPerson(String name);

  Future<void> uploadMovie(Movie movie);

  Future<String> uploadUrl(String path, [bool isVideo]);

  Future<BuiltList<Movie>> search(String title);
}