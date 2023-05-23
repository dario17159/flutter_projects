import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static const String _notFoundImage =
      'https://p.kindpng.com/picc/s/421-4212275_transparent-default-avatar-png-avatar-img-png-download.png';
  static Actor castToEntity(Cast cast) => Actor(
        id: cast.id,
        name: cast.name,
        profilePath: cast.profilePath != null
            ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}'
            : _notFoundImage,
        character: cast.character,
      );
}
