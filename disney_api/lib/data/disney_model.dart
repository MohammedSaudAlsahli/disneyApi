class Disney {
  Disney({
    required this.info,
    required this.data,
  });

  final Info? info;
  final List<Data> data;

  factory Disney.fromJson(Map<String, dynamic> json) {
    return Disney(
      info: json["info"] == null ? null : Info.fromJson(json["info"]),
      data: json["data"] == null
          ? []
          : List<Data>.from(json["data"]!.map((x) => Data.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "info": info?.toJson(),
        "data": data.map((x) => x.toJson()).toList(),
      };
}

class Data {
  Data({
    this.id,
    this.films,
    this.shortFilms,
    this.tvShows,
    this.videoGames,
    this.parkAttractions,
    this.allies,
    this.enemies,
    this.sourceUrl,
    this.name,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.url,
    this.v,
  });

  final int? id;
  final List<dynamic>? films;
  final List<dynamic>? shortFilms;
  final List<String>? tvShows;
  final List<dynamic>? videoGames;
  final List<dynamic>? parkAttractions;
  final List<dynamic>? allies;
  final List<dynamic>? enemies;
  final String? sourceUrl;
  final String? name;
  final String? imageUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? url;
  final int? v;

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json["_id"],
      films: json["films"] == null
          ? []
          : List<dynamic>.from(json["films"]!.map((x) => x)),
      shortFilms: json["shortFilms"] == null
          ? []
          : List<dynamic>.from(json["shortFilms"]!.map((x) => x)),
      tvShows: json["tvShows"] == null
          ? []
          : List<String>.from(json["tvShows"]!.map((x) => x)),
      videoGames: json["videoGames"] == null
          ? []
          : List<dynamic>.from(json["videoGames"]!.map((x) => x)),
      parkAttractions: json["parkAttractions"] == null
          ? []
          : List<dynamic>.from(json["parkAttractions"]!.map((x) => x)),
      allies: json["allies"] == null
          ? []
          : List<dynamic>.from(json["allies"]!.map((x) => x)),
      enemies: json["enemies"] == null
          ? []
          : List<dynamic>.from(json["enemies"]!.map((x) => x)),
      sourceUrl: json["sourceUrl"],
      name: json["name"],
      imageUrl: json["imageUrl"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
      url: json["url"],
      v: json["__v"],
    );
  }

  Map<String, dynamic> toJson() => {
        "_id": id,
        "films": films?.map((x) => x).toList(),
        "shortFilms": shortFilms?.map((x) => x).toList(),
        "tvShows": tvShows?.map((x) => x).toList(),
        "videoGames": videoGames?.map((x) => x).toList(),
        "parkAttractions": parkAttractions?.map((x) => x).toList(),
        "allies": allies?.map((x) => x).toList(),
        "enemies": enemies?.map((x) => x).toList(),
        "sourceUrl": sourceUrl,
        "name": name,
        "imageUrl": imageUrl,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "url": url,
        "__v": v,
      };
}

class Info {
  Info({
    required this.count,
    required this.totalPages,
    required this.previousPage,
    required this.nextPage,
  });

  final int? count;
  final int? totalPages;
  final dynamic previousPage;
  final dynamic nextPage;

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      count: json["count"],
      totalPages: json["totalPages"],
      previousPage: json["previousPage"],
      nextPage: json["nextPage"],
    );
  }

  Map<String, dynamic> toJson() => {
        "count": count,
        "totalPages": totalPages,
        "previousPage": previousPage,
        "nextPage": nextPage,
      };
}
