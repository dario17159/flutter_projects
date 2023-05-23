import 'package:cinemapedia/domain/entities/actor.dart';

abstract class IActorsDatasource{

  Future<List<Actor>> getActorsByMovie(String movieId);
}