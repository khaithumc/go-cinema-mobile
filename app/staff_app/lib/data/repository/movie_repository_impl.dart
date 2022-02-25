import 'dart:io';

import 'package:built_collection/src/list.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:khaithu/data/remote/response/search_movie_response.dart';
import 'package:uuid/uuid.dart' as uuid;

import '../../domain/model/category.dart';
import '../../domain/model/exception.dart';
import '../../domain/model/movie.dart';
import '../../domain/model/person.dart';
import '../../domain/repository/movie_repository.dart';
import '../mappers.dart';
import '../remote/auth_client.dart';
import '../remote/base_url.dart';
import '../remote/response/category_response.dart';
import '../remote/response/error_response.dart';
import '../remote/response/movie_response.dart';
import '../remote/response/person_response.dart';
import '../serializers.dart';

class MovieRepositoryImpl implements MovieRepository {
  final AuthClient _authClient;

  MovieRepositoryImpl(this._authClient);

  @override
  Future<BuiltList<Movie>> getListMovie(int page, int perPage) async {
    try {
      return await _authClient.getBody(buildUrl(
          'admin_movies/', {'page': '$page', 'per_page': '$perPage'}))
          .then((value) => deserializeBuiltList<MovieResponse>(value).map(movieRemoteToDomain).toBuiltList());
    } on ErrorResponse catch (e) {
      if (e.statusCode == HttpStatus.notFound) {
        throw const NotCompletedManagerUserException();
      }
      rethrow;
    }
  }

  @override
  Future<void> uploadMovie(Movie movie) async {
    try {
      final movieRes = await _authClient.postBody(
        buildUrl('admin_movies/'),
        body: movieDomainToRemote(movie).toJson(),
      );
      print(movieRes);
    } on ErrorResponse catch (e) {
      if (e.statusCode == HttpStatus.notFound) {
        throw const NotCompletedManagerUserException();
      }
      rethrow;
    }
  }

  @override
  Future<BuiltList<Person>> getListSearchPerson(String name) async {
    try {
      return await _authClient
          .getBody(buildUrl('people/search/', {'name': name}))
          .then((value) => deserializeBuiltList<PersonResponse>(value).map(personResponseToPerson).toBuiltList());
    } on ErrorResponse catch (e) {
      if (e.statusCode == HttpStatus.notFound) {
        throw const NotCompletedManagerUserException();
      }
      rethrow;
    }
  }

  @override
  Future<BuiltList<Category>> getListCategory() async {
    try {
      return await _authClient.getBody(buildUrl('categories/'))
          .then((value) => deserializeBuiltList<CategoryResponse>(value).map(categoryResponseToCategory).toBuiltList());
    } on ErrorResponse catch (e) {
      if (e.statusCode == HttpStatus.notFound) {
        throw const NotCompletedManagerUserException();
      }
      rethrow;
    }
  }

  @override
  Future<String> uploadUrl(String path, [bool? isVideo]) async {
    try {
      final task = FirebaseStorage.instance
          .ref()
          .child('movies')
          .child(uuid.Uuid().v4())
          .putFile(
        File(path),
        identical(isVideo, true)
            ? SettableMetadata(
          contentType: 'video/mp4',
        )
            : null,
      );
      await task;
      return await task.snapshot.ref.getDownloadURL();
    } on PlatformException catch (e) {
      print(e);
      rethrow;
    }
  }

  @override
  Future<BuiltList<Movie>> search(String title) async {
    return await _authClient.getBody(
      buildUrl(
        '/admin_movies/search',
        {'title': title},
      ),
    ).then((value) => deserializeBuiltList<SearchMovieResponse>(value).map((searchMovieResToDomain)).toBuiltList());
  }
}



