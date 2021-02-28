// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_queries.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchBusinesses$Query$Businesses$Business$Category
    _$SearchBusinesses$Query$Businesses$Business$CategoryFromJson(
        Map<String, dynamic> json) {
  return SearchBusinesses$Query$Businesses$Business$Category()
    ..title = json['title'] as String
    ..alias = json['alias'] as String;
}

Map<String, dynamic>
    _$SearchBusinesses$Query$Businesses$Business$CategoryToJson(
            SearchBusinesses$Query$Businesses$Business$Category instance) =>
        <String, dynamic>{
          'title': instance.title,
          'alias': instance.alias,
        };

SearchBusinesses$Query$Businesses$Business$Location
    _$SearchBusinesses$Query$Businesses$Business$LocationFromJson(
        Map<String, dynamic> json) {
  return SearchBusinesses$Query$Businesses$Business$Location()
    ..city = json['city'] as String
    ..address1 = json['address1'] as String;
}

Map<String, dynamic>
    _$SearchBusinesses$Query$Businesses$Business$LocationToJson(
            SearchBusinesses$Query$Businesses$Business$Location instance) =>
        <String, dynamic>{
          'city': instance.city,
          'address1': instance.address1,
        };

SearchBusinesses$Query$Businesses$Business$Coordinates
    _$SearchBusinesses$Query$Businesses$Business$CoordinatesFromJson(
        Map<String, dynamic> json) {
  return SearchBusinesses$Query$Businesses$Business$Coordinates()
    ..latitude = (json['latitude'] as num)?.toDouble()
    ..longitude = (json['longitude'] as num)?.toDouble();
}

Map<String, dynamic>
    _$SearchBusinesses$Query$Businesses$Business$CoordinatesToJson(
            SearchBusinesses$Query$Businesses$Business$Coordinates instance) =>
        <String, dynamic>{
          'latitude': instance.latitude,
          'longitude': instance.longitude,
        };

SearchBusinesses$Query$Businesses$Business$Hours
    _$SearchBusinesses$Query$Businesses$Business$HoursFromJson(
        Map<String, dynamic> json) {
  return SearchBusinesses$Query$Businesses$Business$Hours()
    ..isOpenNow = json['is_open_now'] as bool;
}

Map<String, dynamic> _$SearchBusinesses$Query$Businesses$Business$HoursToJson(
        SearchBusinesses$Query$Businesses$Business$Hours instance) =>
    <String, dynamic>{
      'is_open_now': instance.isOpenNow,
    };

SearchBusinesses$Query$Businesses$Business
    _$SearchBusinesses$Query$Businesses$BusinessFromJson(
        Map<String, dynamic> json) {
  return SearchBusinesses$Query$Businesses$Business()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..url = json['url'] as String
    ..price = json['price'] as String
    ..rating = (json['rating'] as num)?.toDouble()
    ..distance = (json['distance'] as num)?.toDouble()
    ..categories = (json['categories'] as List)
        ?.map((e) => e == null
            ? null
            : SearchBusinesses$Query$Businesses$Business$Category.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..location = json['location'] == null
        ? null
        : SearchBusinesses$Query$Businesses$Business$Location.fromJson(
            json['location'] as Map<String, dynamic>)
    ..coordinates = json['coordinates'] == null
        ? null
        : SearchBusinesses$Query$Businesses$Business$Coordinates.fromJson(
            json['coordinates'] as Map<String, dynamic>)
    ..photos = (json['photos'] as List)?.map((e) => e as String)?.toList()
    ..hours = (json['hours'] as List)
        ?.map((e) => e == null
            ? null
            : SearchBusinesses$Query$Businesses$Business$Hours.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$SearchBusinesses$Query$Businesses$BusinessToJson(
        SearchBusinesses$Query$Businesses$Business instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'price': instance.price,
      'rating': instance.rating,
      'distance': instance.distance,
      'categories': instance.categories?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.toJson(),
      'coordinates': instance.coordinates?.toJson(),
      'photos': instance.photos,
      'hours': instance.hours?.map((e) => e?.toJson())?.toList(),
    };

SearchBusinesses$Query$Businesses _$SearchBusinesses$Query$BusinessesFromJson(
    Map<String, dynamic> json) {
  return SearchBusinesses$Query$Businesses()
    ..total = json['total'] as int
    ..business = (json['business'] as List)
        ?.map((e) => e == null
            ? null
            : SearchBusinesses$Query$Businesses$Business.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$SearchBusinesses$Query$BusinessesToJson(
        SearchBusinesses$Query$Businesses instance) =>
    <String, dynamic>{
      'total': instance.total,
      'business': instance.business?.map((e) => e?.toJson())?.toList(),
    };

SearchBusinesses$Query _$SearchBusinesses$QueryFromJson(
    Map<String, dynamic> json) {
  return SearchBusinesses$Query()
    ..search = json['search'] == null
        ? null
        : SearchBusinesses$Query$Businesses.fromJson(
            json['search'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SearchBusinesses$QueryToJson(
        SearchBusinesses$Query instance) =>
    <String, dynamic>{
      'search': instance.search?.toJson(),
    };

SearchBusinessesArguments _$SearchBusinessesArgumentsFromJson(
    Map<String, dynamic> json) {
  return SearchBusinessesArguments(
    location: json['location'] as String,
    limit: json['limit'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$SearchBusinessesArgumentsToJson(
        SearchBusinessesArguments instance) =>
    <String, dynamic>{
      'location': instance.location,
      'limit': instance.limit,
      'offset': instance.offset,
    };
