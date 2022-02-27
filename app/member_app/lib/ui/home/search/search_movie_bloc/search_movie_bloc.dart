import 'package:domain/repository/movie_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:member_app/ui/home/search/search_movie_bloc/search_movie_state.dart';
import 'package:utils/utils.dart';

class SearchMovieBloc extends Cubit<SearchMovieState> {
  final MovieRepository repository;

  SearchMovieBloc(this.repository) : super(InitialSearchState());

  void searchMovie(String title) async {
    try {
      emit(LoadingSearchState());
      final data = await repository.search(title);
      emit(SearchMovieStateSuccess(data: data));
    } catch (e) {
      logger.e(e);
      emit(SearchMovieStateError(exception: e));
    }
  }

}