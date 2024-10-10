
class Example {
  int? count;
  int? start;
  int? total;
  List<Subjects>? subjects;
  String? title;

  Example({this.count, this.start, this.total, this.subjects, this.title});

  Example.fromJson(Map<String, dynamic> json) {
    count = json["count"];
    start = json["start"];
    total = json["total"];
    subjects = json["subjects"] == null ? null : (json["subjects"] as List).map((e) => Subjects.fromJson(e)).toList();
    title = json["title"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    _data["start"] = start;
    _data["total"] = total;
    if(subjects != null) {
      _data["subjects"] = subjects?.map((e) => e.toJson()).toList();
    }
    _data["title"] = title;
    return _data;
  }
}

class Subjects {
  Rating? rating;
  List<String>? genres;
  String? title;
  List<Casts>? casts;
  int? collectCount;
  String? originalTitle;
  String? subtype;
  List<Directors>? directors;
  String? year;
  Images? images;
  String? alt;
  String? id;

  Subjects({this.rating, this.genres, this.title, this.casts, this.collectCount, this.originalTitle, this.subtype, this.directors, this.year, this.images, this.alt, this.id});

  Subjects.fromJson(Map<String, dynamic> json) {
    rating = json["rating"] == null ? null : Rating.fromJson(json["rating"]);
    genres = json["genres"] == null ? null : List<String>.from(json["genres"]);
    title = json["title"];
    casts = json["casts"] == null ? null : (json["casts"] as List).map((e) => Casts.fromJson(e)).toList();
    collectCount = json["collect_count"];
    originalTitle = json["original_title"];
    subtype = json["subtype"];
    directors = json["directors"] == null ? null : (json["directors"] as List).map((e) => Directors.fromJson(e)).toList();
    year = json["year"];
    images = json["images"] == null ? null : Images.fromJson(json["images"]);
    alt = json["alt"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(rating != null) {
      _data["rating"] = rating?.toJson();
    }
    if(genres != null) {
      _data["genres"] = genres;
    }
    _data["title"] = title;
    if(casts != null) {
      _data["casts"] = casts?.map((e) => e.toJson()).toList();
    }
    _data["collect_count"] = collectCount;
    _data["original_title"] = originalTitle;
    _data["subtype"] = subtype;
    if(directors != null) {
      _data["directors"] = directors?.map((e) => e.toJson()).toList();
    }
    _data["year"] = year;
    if(images != null) {
      _data["images"] = images?.toJson();
    }
    _data["alt"] = alt;
    _data["id"] = id;
    return _data;
  }
}

class Images {
  String? small;
  String? large;
  String? medium;

  Images({this.small, this.large, this.medium});

  Images.fromJson(Map<String, dynamic> json) {
    small = json["small"];
    large = json["large"];
    medium = json["medium"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["small"] = small;
    _data["large"] = large;
    _data["medium"] = medium;
    return _data;
  }
}

class Directors {
  String? alt;
  Avatars1? avatars;
  String? name;
  String? id;

  Directors({this.alt, this.avatars, this.name, this.id});

  Directors.fromJson(Map<String, dynamic> json) {
    alt = json["alt"];
    avatars = json["avatars"] == null ? null : Avatars1.fromJson(json["avatars"]);
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["alt"] = alt;
    if(avatars != null) {
      _data["avatars"] = avatars?.toJson();
    }
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Avatars1 {
  String? small;
  String? large;
  String? medium;

  Avatars1({this.small, this.large, this.medium});

  Avatars1.fromJson(Map<String, dynamic> json) {
    small = json["small"];
    large = json["large"];
    medium = json["medium"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["small"] = small;
    _data["large"] = large;
    _data["medium"] = medium;
    return _data;
  }
}

class Casts {
  String? alt;
  Avatars? avatars;
  String? name;
  String? id;

  Casts({this.alt, this.avatars, this.name, this.id});

  Casts.fromJson(Map<String, dynamic> json) {
    alt = json["alt"];
    avatars = json["avatars"] == null ? null : Avatars.fromJson(json["avatars"]);
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["alt"] = alt;
    if(avatars != null) {
      _data["avatars"] = avatars?.toJson();
    }
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Avatars {
  String? small;
  String? large;
  String? medium;

  Avatars({this.small, this.large, this.medium});

  Avatars.fromJson(Map<String, dynamic> json) {
    small = json["small"];
    large = json["large"];
    medium = json["medium"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["small"] = small;
    _data["large"] = large;
    _data["medium"] = medium;
    return _data;
  }
}

class Rating {
  int? max;
  double? average;
  String? stars;
  int? min;

  Rating({this.max, this.average, this.stars, this.min});

  Rating.fromJson(Map<String, dynamic> json) {
    max = json["max"];
    average = json["average"];
    stars = json["stars"];
    min = json["min"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["max"] = max;
    _data["average"] = average;
    _data["stars"] = stars;
    _data["min"] = min;
    return _data;
  }
}
