import 'package:flutter_mvvm_2023/generated/json/base/json_convert_content.dart';
import 'package:flutter_mvvm_2023/model/movies_model_entity.dart';

MoviesModelEntity $MoviesModelEntityFromJson(Map<String, dynamic> json) {
	final MoviesModelEntity moviesModelEntity = MoviesModelEntity();
	final List<MoviesModelMovies>? movies = jsonConvert.convertListNotNull<MoviesModelMovies>(json['movies']);
	if (movies != null) {
		moviesModelEntity.movies = movies;
	}
	return moviesModelEntity;
}

Map<String, dynamic> $MoviesModelEntityToJson(MoviesModelEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['movies'] =  entity.movies?.map((v) => v.toJson()).toList();
	return data;
}

MoviesModelMovies $MoviesModelMoviesFromJson(Map<String, dynamic> json) {
	final MoviesModelMovies moviesModelMovies = MoviesModelMovies();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		moviesModelMovies.id = id;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		moviesModelMovies.title = title;
	}
	final String? year = jsonConvert.convert<String>(json['year']);
	if (year != null) {
		moviesModelMovies.year = year;
	}
	final List<String>? genres = jsonConvert.convertListNotNull<String>(json['genres']);
	if (genres != null) {
		moviesModelMovies.genres = genres;
	}
	final List<int>? ratings = jsonConvert.convertListNotNull<int>(json['ratings']);
	if (ratings != null) {
		moviesModelMovies.ratings = ratings;
	}
	final String? poster = jsonConvert.convert<String>(json['poster']);
	if (poster != null) {
		moviesModelMovies.poster = poster;
	}
	final String? contentRating = jsonConvert.convert<String>(json['contentRating']);
	if (contentRating != null) {
		moviesModelMovies.contentRating = contentRating;
	}
	final String? duration = jsonConvert.convert<String>(json['duration']);
	if (duration != null) {
		moviesModelMovies.duration = duration;
	}
	final String? releaseDate = jsonConvert.convert<String>(json['releaseDate']);
	if (releaseDate != null) {
		moviesModelMovies.releaseDate = releaseDate;
	}
	final int? averageRating = jsonConvert.convert<int>(json['averageRating']);
	if (averageRating != null) {
		moviesModelMovies.averageRating = averageRating;
	}
	final String? originalTitle = jsonConvert.convert<String>(json['originalTitle']);
	if (originalTitle != null) {
		moviesModelMovies.originalTitle = originalTitle;
	}
	final String? storyline = jsonConvert.convert<String>(json['storyline']);
	if (storyline != null) {
		moviesModelMovies.storyline = storyline;
	}
	final List<String>? actors = jsonConvert.convertListNotNull<String>(json['actors']);
	if (actors != null) {
		moviesModelMovies.actors = actors;
	}
	final String? imdbRating = jsonConvert.convert<String>(json['imdbRating']);
	if (imdbRating != null) {
		moviesModelMovies.imdbRating = imdbRating;
	}
	final String? posterurl = jsonConvert.convert<String>(json['posterurl']);
	if (posterurl != null) {
		moviesModelMovies.posterurl = posterurl;
	}
	return moviesModelMovies;
}

Map<String, dynamic> $MoviesModelMoviesToJson(MoviesModelMovies entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['title'] = entity.title;
	data['year'] = entity.year;
	data['genres'] =  entity.genres;
	data['ratings'] =  entity.ratings;
	data['poster'] = entity.poster;
	data['contentRating'] = entity.contentRating;
	data['duration'] = entity.duration;
	data['releaseDate'] = entity.releaseDate;
	data['averageRating'] = entity.averageRating;
	data['originalTitle'] = entity.originalTitle;
	data['storyline'] = entity.storyline;
	data['actors'] =  entity.actors;
	data['imdbRating'] = entity.imdbRating;
	data['posterurl'] = entity.posterurl;
	return data;
}