import 'package:cinemapedia/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Este repositorio es inmutable
final moviesRepositoryProvider = Provider((ref) {
  // Aqui es donde deberia de injectar la dependencia
  return MovieRepositoryImpl(MoviedbDatasource());
});
