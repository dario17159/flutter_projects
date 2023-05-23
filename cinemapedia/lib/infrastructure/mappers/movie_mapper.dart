import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static const String _notFoundImage =
      'https://aeroclub-issoire.fr/wp-content/uploads/2020/05/image-not-found.jpg';

  static Movie movieDBToEntity(MovieMovieDB movieDB) => Movie(
        adult: movieDB.adult,
        backdropPath: movieDB.backdropPath.isNotEmpty
            ? 'https://image.tmdb.org/t/p/w500${movieDB.backdropPath}'
            : _notFoundImage,
        genreIds: movieDB.genreIds.map((e) => e.toString()).toList(),
        id: movieDB.id,
        originalLanguage: movieDB.originalLanguage,
        originalTitle: movieDB.originalTitle,
        overview: movieDB.overview,
        popularity: movieDB.popularity,
        posterPath: movieDB.posterPath.isNotEmpty
            ? 'https://image.tmdb.org/t/p/w500${movieDB.posterPath}'
            : _notFoundImage,
        releaseDate: movieDB.releaseDate,
        title: movieDB.title,
        video: movieDB.video,
        voteAverage: movieDB.voteAverage,
        voteCount: movieDB.voteCount,
      );

  static Movie movieDetailsToEntity(MovieDetails movieDetails) => Movie(
        adult: movieDetails.adult,
        backdropPath: movieDetails.backdropPath.isNotEmpty
            ? 'https://image.tmdb.org/t/p/w500${movieDetails.backdropPath}'
            : _notFoundImage,
        genreIds: movieDetails.genres.map((genre) => genre.name).toList(),
        id: movieDetails.id,
        originalLanguage: movieDetails.originalLanguage,
        originalTitle: movieDetails.originalTitle,
        overview: movieDetails.overview,
        popularity: movieDetails.popularity,
        posterPath: movieDetails.posterPath.isNotEmpty
            ? 'https://image.tmdb.org/t/p/w500${movieDetails.posterPath}'
            : _notFoundImage,
        releaseDate: movieDetails.releaseDate,
        title: movieDetails.title,
        video: movieDetails.video,
        voteAverage: movieDetails.voteAverage,
        voteCount: movieDetails.voteCount,
      );
}
