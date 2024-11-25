import 'dart:convert';


///Request
class Example {
  int count;
  int start;
  List<Subject> subjects;
  String title;
  int total;

  Example({
    required this.count,
    required this.start,
    required this.subjects,
    required this.title,
    required this.total,
  });

  factory Example.fromRawJson(String str) => Example.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Example.fromJson(Map<String, dynamic> json) => Example(
    count: json["count"],
    start: json["start"],
    subjects: List<Subject>.from(json["subjects"].map((x) => Subject.fromJson(x))),
    title: json["title"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "start": start,
    "subjects": List<dynamic>.from(subjects.map((x) => x.toJson())),
    "title": title,
    "total": total,
  };
}

class Subject {
  String alt;
  List<Cast> casts;
  int collectCount;
  List<Director> directors;
  List<String> genres;
  String id;
  Images images;
  String originalTitle;
  Rating rating;
  String subtype;
  String title;
  String year;

  Subject({
    required this.alt,
    required this.casts,
    required this.collectCount,
    required this.directors,
    required this.genres,
    required this.id,
    required this.images,
    required this.originalTitle,
    required this.rating,
    required this.subtype,
    required this.title,
    required this.year,
  });

  factory Subject.fromRawJson(String str) => Subject.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Subject.fromJson(Map<String, dynamic> json) => Subject(
    alt: json["alt"],
    casts: List<Cast>.from(json["casts"].map((x) => Cast.fromJson(x))),
    collectCount: json["collect_count"],
    directors: List<Director>.from(json["directors"].map((x) => Director.fromJson(x))),
    genres: List<String>.from(json["genres"].map((x) => x)),
    id: json["id"],
    images: Images.fromJson(json["images"]),
    originalTitle: json["original_title"],
    rating: Rating.fromJson(json["rating"]),
    subtype: json["subtype"],
    title: json["title"],
    year: json["year"],
  );

  Map<String, dynamic> toJson() => {
    "alt": alt,
    "casts": List<dynamic>.from(casts.map((x) => x.toJson())),
    "collect_count": collectCount,
    "directors": List<dynamic>.from(directors.map((x) => x.toJson())),
    "genres": List<dynamic>.from(genres.map((x) => x)),
    "id": id,
    "images": images.toJson(),
    "original_title": originalTitle,
    "rating": rating.toJson(),
    "subtype": subtype,
    "title": title,
    "year": year,
  };
}

class Cast {
  String? alt;
  PurpleAvatars? avatars;
  String? id;
  String name;

  Cast({
    required this.alt,
    required this.avatars,
    required this.id,
    required this.name,
  });

  factory Cast.fromRawJson(String str) => Cast.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Cast.fromJson(Map<String, dynamic> json) => Cast(
    alt: json["alt"],
    avatars: json["avatars"] == null ? null : PurpleAvatars.fromJson(json["avatars"]),
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "alt": alt,
    "avatars": avatars?.toJson(),
    "id": id,
    "name": name,
  };
}

class PurpleAvatars {
  String large;
  String medium;
  String small;

  PurpleAvatars({
    required this.large,
    required this.medium,
    required this.small,
  });

  factory PurpleAvatars.fromRawJson(String str) => PurpleAvatars.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleAvatars.fromJson(Map<String, dynamic> json) => PurpleAvatars(
    large: json["large"],
    medium: json["medium"],
    small: json["small"],
  );

  Map<String, dynamic> toJson() => {
    "large": large,
    "medium": medium,
    "small": small,
  };
}

class Director {
  String? alt;
  FluffyAvatars? avatars;
  String? id;
  String name;

  Director({
    required this.alt,
    required this.avatars,
    required this.id,
    required this.name,
  });

  factory Director.fromRawJson(String str) => Director.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Director.fromJson(Map<String, dynamic> json) => Director(
    alt: json["alt"],
    avatars: json["avatars"] == null ? null : FluffyAvatars.fromJson(json["avatars"]),
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "alt": alt,
    "avatars": avatars?.toJson(),
    "id": id,
    "name": name,
  };
}

class FluffyAvatars {
  String large;
  String medium;
  String small;

  FluffyAvatars({
    required this.large,
    required this.medium,
    required this.small,
  });

  factory FluffyAvatars.fromRawJson(String str) => FluffyAvatars.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyAvatars.fromJson(Map<String, dynamic> json) => FluffyAvatars(
    large: json["large"],
    medium: json["medium"],
    small: json["small"],
  );

  Map<String, dynamic> toJson() => {
    "large": large,
    "medium": medium,
    "small": small,
  };
}

class Images {
  String large;
  String medium;
  String small;

  Images({
    required this.large,
    required this.medium,
    required this.small,
  });

  factory Images.fromRawJson(String str) => Images.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Images.fromJson(Map<String, dynamic> json) => Images(
    large: json["large"],
    medium: json["medium"],
    small: json["small"],
  );

  Map<String, dynamic> toJson() => {
    "large": large,
    "medium": medium,
    "small": small,
  };
}

class Rating {
  dynamic average;
  int max;
  int min;
  String stars;

  Rating({
    required this.average,
    required this.max,
    required this.min,
    required this.stars,
  });

  factory Rating.fromRawJson(String str) => Rating.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    average: json["average"],
    max: json["max"],
    min: json["min"],
    stars: json["stars"],
  );

  Map<String, dynamic> toJson() => {
    "average": average,
    "max": max,
    "min": min,
    "stars": stars,
  };
}
