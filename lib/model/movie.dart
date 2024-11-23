//Package
import 'package:get_it/get_it.dart';

//Model
import '../model/app_config.dart';
class Movie {
  final String name;
  final String language;
  final bool isAdult;
  final String description;
  final String posterPath;
  final String backdropPath;
  final num rating;
  final String releaseDate;

  Movie({
    required this.name,
    required this.language,
    required this.isAdult,
    required this.description,
    required this.posterPath,
    required this.backdropPath,
    required this.rating,
    required this.releaseDate,
  });

factory Movie.fromJson(Map<String, dynamic> _json) {
  return Movie(
    name: _json['title'] != null ? _json['title'] : 'Unknown',  // Handle null case
    language: _json['original_language'] != null ? _json['original_language'] : 'N/A',  // Handle null case
    isAdult: _json['adult'] ?? false,  // Default to false if null
    description: _json['overview'] != null ? _json['overview'] : 'No description available',  // Handle null case
    posterPath: _json['poster_path'] != null ? _json['poster_path'] : '',  // Handle null case
    backdropPath: _json['backdrop_path'] != null ? _json['backdrop_path'] : '',  // Handle null case
    rating: _json['vote_average'] != null ? _json['vote_average'] : 0.0,  // Handle null case
    releaseDate: _json['release_date'] != null ? _json['release_date'] : 'Unknown',  // Handle null case
  );
}

  String posterURL() {
    final AppConfig _appConfig = GetIt.instance.get<AppConfig>();
    return '${_appConfig.BASE_IMAGE_API_URL}${posterPath}';
  }
}
