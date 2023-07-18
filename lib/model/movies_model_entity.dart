import 'package:flutter_mvvm_2023/generated/json/base/json_field.dart';
import 'package:flutter_mvvm_2023/generated/json/movies_model_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class MoviesModelEntity {
	List<MoviesModelMovies>? movies;

	MoviesModelEntity();

	factory MoviesModelEntity.fromJson(Map<String, dynamic> json) => $MoviesModelEntityFromJson(json);

	Map<String, dynamic> toJson() => $MoviesModelEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MoviesModelMovies {
	String? id;
	String? title;
	String? year;
	List<String>? genres;
	List<int>? ratings;
	String? poster;
	dynamic? contentRating;
	String? duration;
	String? releaseDate;
	dynamic? averageRating;
	String? originalTitle;
	String? storyline;
	List<String>? actors;
	dynamic? imdbRating;
	String? posterurl;

	MoviesModelMovies();

	factory MoviesModelMovies.fromJson(Map<String, dynamic> json) => $MoviesModelMoviesFromJson(json);

	Map<String, dynamic> toJson() => $MoviesModelMoviesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}