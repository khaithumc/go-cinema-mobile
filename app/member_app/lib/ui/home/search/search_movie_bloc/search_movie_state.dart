import 'package:built_collection/built_collection.dart';
import 'package:domain/model/movie.dart';

abstract class SearchMovieState {}

class InitialSearchState extends SearchMovieState {}

class LoadingSearchState extends SearchMovieState {}

class SearchMovieStateSuccess extends SearchMovieState {
   final BuiltList<Movie> data;

   SearchMovieStateSuccess({
    required this.data,
});

}

class SearchMovieStateError extends SearchMovieState {
  final Object exception;

  SearchMovieStateError({
    required this.exception,
});

}