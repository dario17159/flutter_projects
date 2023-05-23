// Este repositorio es inmutable
import 'package:cinemapedia/infrastructure/datasources/actor_moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/actors_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final actorsRepositoryProvider = Provider((ref) {
  // Aqui es donde deberia de injectar la dependencia
  return ActorsRepository(ActorDatasource());
});
