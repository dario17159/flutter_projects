import 'package:cinemapedia/domain/datasources/actors_datasource.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/domain/repositories/actors_repository.dart';

class ActorsRepository implements IActorsRepository {
  final IActorsDatasource actorsDatasource;

  ActorsRepository(this.actorsDatasource);

  @override
  Future<List<Actor>> getActorsByMovie(String idMovie) {
    return actorsDatasource.getActorsByMovie(idMovie);
  }
}
