// To parse this JSON data, do
//
//     final cat = catFromJson(jsonString);

import 'dart:convert';

List<Cat> cats(String data) =>
    (json.decode(data) as List).map((data) => Cat.fromJson(data)).toList();

Cat catFromJson(String str) => Cat.fromJson(json.decode(str));

String catToJson(Cat data) => json.encode(data.toJson());

class Cat {
  Cat({
    required this.weight,
    required this.id,
    required this.name,
    required this.cfaUrl,
    required this.vetstreetUrl,
    required this.vcahospitalsUrl,
    required this.temperament,
    required this.origin,
    required this.countryCodes,
    required this.countryCode,
    required this.description,
    required this.lifeSpan,
    required this.indoor,
    required this.lap,
    required this.altNames,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    required this.wikipediaUrl,
    required this.hypoallergenic,
    required this.referenceImageId,
    required this.image,
  });

  Weight weight;
  String id;
  String name;
  String cfaUrl;
  String vetstreetUrl;
  String vcahospitalsUrl;
  String temperament;
  String origin;
  String countryCodes;
  String countryCode;
  String description;
  String lifeSpan;
  int indoor;
  int lap;
  String altNames;
  int adaptability;
  int affectionLevel;
  int childFriendly;
  int dogFriendly;
  int energyLevel;
  int grooming;
  int healthIssues;
  int intelligence;
  int sheddingLevel;
  int socialNeeds;
  int strangerFriendly;
  int vocalisation;
  int experimental;
  int hairless;
  int natural;
  int rare;
  int rex;
  int suppressedTail;
  int shortLegs;
  String wikipediaUrl;
  int hypoallergenic;
  String referenceImageId;
  ImageCat image;

  factory Cat.fromJson(Map<String, dynamic> json) => Cat(
        weight: Weight.fromJson(json["weight"] ?? {}),
        id: json["id"] ?? "",
        name: json["name"] ?? "",
        cfaUrl: json["cfa_url"] ?? "",
        vetstreetUrl: json["vetstreet_url"] ?? "",
        vcahospitalsUrl: json["vcahospitals_url"] ?? "",
        temperament: json["temperament"] ?? "",
        origin: json["origin"] ?? "",
        countryCodes: json["country_codes"] ?? "",
        countryCode: json["country_code"] ?? "",
        description: json["description"] ?? "",
        lifeSpan: json["life_span"] ?? "",
        indoor: json["indoor"] ?? 0,
        lap: json["lap"] ?? 0,
        altNames: json["alt_names"] ?? "",
        adaptability: json["adaptability"] ?? 0,
        affectionLevel: json["affection_level"] ?? 0,
        childFriendly: json["child_friendly"] ?? 0,
        dogFriendly: json["dog_friendly"] ?? 0,
        energyLevel: json["energy_level"] ?? 0,
        grooming: json["grooming"] ?? 0,
        healthIssues: json["health_issues"] ?? 0,
        intelligence: json["intelligence"] ?? 0,
        sheddingLevel: json["shedding_level"] ?? 0,
        socialNeeds: json["social_needs"] ?? 0,
        strangerFriendly: json["stranger_friendly"] ?? 0,
        vocalisation: json["vocalisation"] ?? 0,
        experimental: json["experimental"] ?? 0,
        hairless: json["hairless"] ?? 0,
        natural: json["natural"] ?? 0,
        rare: json["rare"] ?? 0,
        rex: json["rex"] ?? 0,
        suppressedTail: json["suppressed_tail"] ?? 0,
        shortLegs: json["short_legs"] ?? 0,
        wikipediaUrl: json["wikipedia_url"] ?? "",
        hypoallergenic: json["hypoallergenic"] ?? "",
        referenceImageId: json["reference_image_id"] ?? "",
        image: ImageCat.fromJson(json["image"] ?? {}),
      );

  Map<String, dynamic> toJson() => {
        "weight": weight.toJson(),
        "id": id,
        "name": name,
        "cfa_url": cfaUrl,
        "vetstreet_url": vetstreetUrl,
        "vcahospitals_url": vcahospitalsUrl,
        "temperament": temperament,
        "origin": origin,
        "country_codes": countryCodes,
        "country_code": countryCode,
        "description": description,
        "life_span": lifeSpan,
        "indoor": indoor,
        "lap": lap,
        "alt_names": altNames,
        "adaptability": adaptability,
        "affection_level": affectionLevel,
        "child_friendly": childFriendly,
        "dog_friendly": dogFriendly,
        "energy_level": energyLevel,
        "grooming": grooming,
        "health_issues": healthIssues,
        "intelligence": intelligence,
        "shedding_level": sheddingLevel,
        "social_needs": socialNeeds,
        "stranger_friendly": strangerFriendly,
        "vocalisation": vocalisation,
        "experimental": experimental,
        "hairless": hairless,
        "natural": natural,
        "rare": rare,
        "rex": rex,
        "suppressed_tail": suppressedTail,
        "short_legs": shortLegs,
        "wikipedia_url": wikipediaUrl,
        "hypoallergenic": hypoallergenic,
        "reference_image_id": referenceImageId,
        "image": image.toJson(),
      };
}

class ImageCat {
  ImageCat({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
  });

  String id;
  int width;
  int height;
  String url;

  factory ImageCat.fromJson(Map<String, dynamic> json) => ImageCat(
        id: json["id"] ?? "",
        width: json["width"] ?? 0,
        height: json["height"] ?? 0,
        url: json["url"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "url": url,
      };
}

class Weight {
  Weight({
    this.imperial,
    this.metric,
  });

  String? imperial;
  String? metric;

  factory Weight.fromJson(Map<String, dynamic> json) => Weight(
        imperial: json["imperial"],
        metric: json["metric"],
      );

  Map<String, dynamic> toJson() => {
        "imperial": imperial,
        "metric": metric,
      };
}
