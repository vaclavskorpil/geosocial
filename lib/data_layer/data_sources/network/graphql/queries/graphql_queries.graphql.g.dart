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

BusinessDetail$Query$Business$Category
    _$BusinessDetail$Query$Business$CategoryFromJson(
        Map<String, dynamic> json) {
  return BusinessDetail$Query$Business$Category()
    ..title = json['title'] as String
    ..alias = json['alias'] as String;
}

Map<String, dynamic> _$BusinessDetail$Query$Business$CategoryToJson(
        BusinessDetail$Query$Business$Category instance) =>
    <String, dynamic>{
      'title': instance.title,
      'alias': instance.alias,
    };

BusinessDetail$Query$Business$Location
    _$BusinessDetail$Query$Business$LocationFromJson(
        Map<String, dynamic> json) {
  return BusinessDetail$Query$Business$Location()
    ..city = json['city'] as String
    ..address1 = json['address1'] as String
    ..formattedAddress = json['formatted_address'] as String;
}

Map<String, dynamic> _$BusinessDetail$Query$Business$LocationToJson(
        BusinessDetail$Query$Business$Location instance) =>
    <String, dynamic>{
      'city': instance.city,
      'address1': instance.address1,
      'formatted_address': instance.formattedAddress,
    };

BusinessDetail$Query$Business$Coordinates
    _$BusinessDetail$Query$Business$CoordinatesFromJson(
        Map<String, dynamic> json) {
  return BusinessDetail$Query$Business$Coordinates()
    ..latitude = (json['latitude'] as num)?.toDouble()
    ..longitude = (json['longitude'] as num)?.toDouble();
}

Map<String, dynamic> _$BusinessDetail$Query$Business$CoordinatesToJson(
        BusinessDetail$Query$Business$Coordinates instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

BusinessDetail$Query$Business$Hours$OpenHours
    _$BusinessDetail$Query$Business$Hours$OpenHoursFromJson(
        Map<String, dynamic> json) {
  return BusinessDetail$Query$Business$Hours$OpenHours()
    ..end = json['end'] as String
    ..start = json['start'] as String
    ..day = json['day'] as int;
}

Map<String, dynamic> _$BusinessDetail$Query$Business$Hours$OpenHoursToJson(
        BusinessDetail$Query$Business$Hours$OpenHours instance) =>
    <String, dynamic>{
      'end': instance.end,
      'start': instance.start,
      'day': instance.day,
    };

BusinessDetail$Query$Business$Hours
    _$BusinessDetail$Query$Business$HoursFromJson(Map<String, dynamic> json) {
  return BusinessDetail$Query$Business$Hours()
    ..open = (json['open'] as List)
        ?.map((e) => e == null
            ? null
            : BusinessDetail$Query$Business$Hours$OpenHours.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..isOpenNow = json['is_open_now'] as bool;
}

Map<String, dynamic> _$BusinessDetail$Query$Business$HoursToJson(
        BusinessDetail$Query$Business$Hours instance) =>
    <String, dynamic>{
      'open': instance.open?.map((e) => e?.toJson())?.toList(),
      'is_open_now': instance.isOpenNow,
    };

BusinessDetail$Query$Business$Review$User
    _$BusinessDetail$Query$Business$Review$UserFromJson(
        Map<String, dynamic> json) {
  return BusinessDetail$Query$Business$Review$User()
    ..id = json['id'] as String
    ..profileUrl = json['profile_url'] as String
    ..imageUrl = json['image_url'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$BusinessDetail$Query$Business$Review$UserToJson(
        BusinessDetail$Query$Business$Review$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile_url': instance.profileUrl,
      'image_url': instance.imageUrl,
      'name': instance.name,
    };

BusinessDetail$Query$Business$Review
    _$BusinessDetail$Query$Business$ReviewFromJson(Map<String, dynamic> json) {
  return BusinessDetail$Query$Business$Review()
    ..id = json['id'] as String
    ..rating = json['rating'] as int
    ..timeCreated = json['time_created'] as String
    ..user = json['user'] == null
        ? null
        : BusinessDetail$Query$Business$Review$User.fromJson(
            json['user'] as Map<String, dynamic>)
    ..text = json['text'] as String
    ..url = json['url'] as String;
}

Map<String, dynamic> _$BusinessDetail$Query$Business$ReviewToJson(
        BusinessDetail$Query$Business$Review instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'time_created': instance.timeCreated,
      'user': instance.user?.toJson(),
      'text': instance.text,
      'url': instance.url,
    };

BusinessDetail$Query$Business _$BusinessDetail$Query$BusinessFromJson(
    Map<String, dynamic> json) {
  return BusinessDetail$Query$Business()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..url = json['url'] as String
    ..price = json['price'] as String
    ..rating = (json['rating'] as num)?.toDouble()
    ..distance = (json['distance'] as num)?.toDouble()
    ..reviewCount = json['review_count'] as int
    ..phone = json['phone'] as String
    ..displayPhone = json['display_phone'] as String
    ..categories = (json['categories'] as List)
        ?.map((e) => e == null
            ? null
            : BusinessDetail$Query$Business$Category.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..location = json['location'] == null
        ? null
        : BusinessDetail$Query$Business$Location.fromJson(
            json['location'] as Map<String, dynamic>)
    ..coordinates = json['coordinates'] == null
        ? null
        : BusinessDetail$Query$Business$Coordinates.fromJson(
            json['coordinates'] as Map<String, dynamic>)
    ..photos = (json['photos'] as List)?.map((e) => e as String)?.toList()
    ..hours = (json['hours'] as List)
        ?.map((e) => e == null
            ? null
            : BusinessDetail$Query$Business$Hours.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..reviews = (json['reviews'] as List)
        ?.map((e) => e == null
            ? null
            : BusinessDetail$Query$Business$Review.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$BusinessDetail$Query$BusinessToJson(
        BusinessDetail$Query$Business instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'price': instance.price,
      'rating': instance.rating,
      'distance': instance.distance,
      'review_count': instance.reviewCount,
      'phone': instance.phone,
      'display_phone': instance.displayPhone,
      'categories': instance.categories?.map((e) => e?.toJson())?.toList(),
      'location': instance.location?.toJson(),
      'coordinates': instance.coordinates?.toJson(),
      'photos': instance.photos,
      'hours': instance.hours?.map((e) => e?.toJson())?.toList(),
      'reviews': instance.reviews?.map((e) => e?.toJson())?.toList(),
    };

BusinessDetail$Query _$BusinessDetail$QueryFromJson(Map<String, dynamic> json) {
  return BusinessDetail$Query()
    ..business = json['business'] == null
        ? null
        : BusinessDetail$Query$Business.fromJson(
            json['business'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BusinessDetail$QueryToJson(
        BusinessDetail$Query instance) =>
    <String, dynamic>{
      'business': instance.business?.toJson(),
    };

SearchBusinessesArguments _$SearchBusinessesArgumentsFromJson(
    Map<String, dynamic> json) {
  return SearchBusinessesArguments(
    location: json['location'] as String,
    latitude: (json['latitude'] as num)?.toDouble(),
    longitude: (json['longitude'] as num)?.toDouble(),
    searchTerm: json['searchTerm'] as String,
    radius: (json['radius'] as num)?.toDouble(),
    categories: json['categories'] as String,
    price: json['price'] as String,
    limit: json['limit'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$SearchBusinessesArgumentsToJson(
        SearchBusinessesArguments instance) =>
    <String, dynamic>{
      'location': instance.location,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'searchTerm': instance.searchTerm,
      'radius': instance.radius,
      'categories': instance.categories,
      'price': instance.price,
      'limit': instance.limit,
      'offset': instance.offset,
    };

BusinessDetailArguments _$BusinessDetailArgumentsFromJson(
    Map<String, dynamic> json) {
  return BusinessDetailArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$BusinessDetailArgumentsToJson(
        BusinessDetailArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
