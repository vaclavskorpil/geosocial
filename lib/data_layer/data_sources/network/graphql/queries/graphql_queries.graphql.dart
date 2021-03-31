// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_queries.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchBusinesses$Query$Businesses$Business$Category with EquatableMixin {
  SearchBusinesses$Query$Businesses$Business$Category();

  factory SearchBusinesses$Query$Businesses$Business$Category.fromJson(
          Map<String, dynamic> json) =>
      _$SearchBusinesses$Query$Businesses$Business$CategoryFromJson(json);

  String title;

  String alias;

  @override
  List<Object> get props => [title, alias];
  Map<String, dynamic> toJson() =>
      _$SearchBusinesses$Query$Businesses$Business$CategoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchBusinesses$Query$Businesses$Business$Location with EquatableMixin {
  SearchBusinesses$Query$Businesses$Business$Location();

  factory SearchBusinesses$Query$Businesses$Business$Location.fromJson(
          Map<String, dynamic> json) =>
      _$SearchBusinesses$Query$Businesses$Business$LocationFromJson(json);

  String city;

  String address1;

  @override
  List<Object> get props => [city, address1];
  Map<String, dynamic> toJson() =>
      _$SearchBusinesses$Query$Businesses$Business$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchBusinesses$Query$Businesses$Business$Coordinates
    with EquatableMixin {
  SearchBusinesses$Query$Businesses$Business$Coordinates();

  factory SearchBusinesses$Query$Businesses$Business$Coordinates.fromJson(
          Map<String, dynamic> json) =>
      _$SearchBusinesses$Query$Businesses$Business$CoordinatesFromJson(json);

  double latitude;

  double longitude;

  @override
  List<Object> get props => [latitude, longitude];
  Map<String, dynamic> toJson() =>
      _$SearchBusinesses$Query$Businesses$Business$CoordinatesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchBusinesses$Query$Businesses$Business$Hours with EquatableMixin {
  SearchBusinesses$Query$Businesses$Business$Hours();

  factory SearchBusinesses$Query$Businesses$Business$Hours.fromJson(
          Map<String, dynamic> json) =>
      _$SearchBusinesses$Query$Businesses$Business$HoursFromJson(json);

  @JsonKey(name: 'is_open_now')
  bool isOpenNow;

  @override
  List<Object> get props => [isOpenNow];
  Map<String, dynamic> toJson() =>
      _$SearchBusinesses$Query$Businesses$Business$HoursToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchBusinesses$Query$Businesses$Business with EquatableMixin {
  SearchBusinesses$Query$Businesses$Business();

  factory SearchBusinesses$Query$Businesses$Business.fromJson(
          Map<String, dynamic> json) =>
      _$SearchBusinesses$Query$Businesses$BusinessFromJson(json);

  String id;

  String name;

  String url;

  String price;

  double rating;

  double distance;

  List<SearchBusinesses$Query$Businesses$Business$Category> categories;

  SearchBusinesses$Query$Businesses$Business$Location location;

  SearchBusinesses$Query$Businesses$Business$Coordinates coordinates;

  List<String> photos;

  List<SearchBusinesses$Query$Businesses$Business$Hours> hours;

  @override
  List<Object> get props => [
        id,
        name,
        url,
        price,
        rating,
        distance,
        categories,
        location,
        coordinates,
        photos,
        hours
      ];
  Map<String, dynamic> toJson() =>
      _$SearchBusinesses$Query$Businesses$BusinessToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchBusinesses$Query$Businesses with EquatableMixin {
  SearchBusinesses$Query$Businesses();

  factory SearchBusinesses$Query$Businesses.fromJson(
          Map<String, dynamic> json) =>
      _$SearchBusinesses$Query$BusinessesFromJson(json);

  int total;

  List<SearchBusinesses$Query$Businesses$Business> business;

  @override
  List<Object> get props => [total, business];
  Map<String, dynamic> toJson() =>
      _$SearchBusinesses$Query$BusinessesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchBusinesses$Query with EquatableMixin {
  SearchBusinesses$Query();

  factory SearchBusinesses$Query.fromJson(Map<String, dynamic> json) =>
      _$SearchBusinesses$QueryFromJson(json);

  SearchBusinesses$Query$Businesses search;

  @override
  List<Object> get props => [search];
  Map<String, dynamic> toJson() => _$SearchBusinesses$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BusinessDetail$Query$Business$Category with EquatableMixin {
  BusinessDetail$Query$Business$Category();

  factory BusinessDetail$Query$Business$Category.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessDetail$Query$Business$CategoryFromJson(json);

  String title;

  String alias;

  @override
  List<Object> get props => [title, alias];
  Map<String, dynamic> toJson() =>
      _$BusinessDetail$Query$Business$CategoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BusinessDetail$Query$Business$Location with EquatableMixin {
  BusinessDetail$Query$Business$Location();

  factory BusinessDetail$Query$Business$Location.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessDetail$Query$Business$LocationFromJson(json);

  String city;

  String address1;

  @JsonKey(name: 'formatted_address')
  String formattedAddress;

  @override
  List<Object> get props => [city, address1, formattedAddress];
  Map<String, dynamic> toJson() =>
      _$BusinessDetail$Query$Business$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BusinessDetail$Query$Business$Coordinates with EquatableMixin {
  BusinessDetail$Query$Business$Coordinates();

  factory BusinessDetail$Query$Business$Coordinates.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessDetail$Query$Business$CoordinatesFromJson(json);

  double latitude;

  double longitude;

  @override
  List<Object> get props => [latitude, longitude];
  Map<String, dynamic> toJson() =>
      _$BusinessDetail$Query$Business$CoordinatesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BusinessDetail$Query$Business$Hours$OpenHours with EquatableMixin {
  BusinessDetail$Query$Business$Hours$OpenHours();

  factory BusinessDetail$Query$Business$Hours$OpenHours.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessDetail$Query$Business$Hours$OpenHoursFromJson(json);

  String end;

  String start;

  int day;

  @override
  List<Object> get props => [end, start, day];
  Map<String, dynamic> toJson() =>
      _$BusinessDetail$Query$Business$Hours$OpenHoursToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BusinessDetail$Query$Business$Hours with EquatableMixin {
  BusinessDetail$Query$Business$Hours();

  factory BusinessDetail$Query$Business$Hours.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessDetail$Query$Business$HoursFromJson(json);

  List<BusinessDetail$Query$Business$Hours$OpenHours> open;

  @JsonKey(name: 'is_open_now')
  bool isOpenNow;

  @override
  List<Object> get props => [open, isOpenNow];
  Map<String, dynamic> toJson() =>
      _$BusinessDetail$Query$Business$HoursToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BusinessDetail$Query$Business$Review$User with EquatableMixin {
  BusinessDetail$Query$Business$Review$User();

  factory BusinessDetail$Query$Business$Review$User.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessDetail$Query$Business$Review$UserFromJson(json);

  String id;

  @JsonKey(name: 'profile_url')
  String profileUrl;

  @JsonKey(name: 'image_url')
  String imageUrl;

  String name;

  @override
  List<Object> get props => [id, profileUrl, imageUrl, name];
  Map<String, dynamic> toJson() =>
      _$BusinessDetail$Query$Business$Review$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BusinessDetail$Query$Business$Review with EquatableMixin {
  BusinessDetail$Query$Business$Review();

  factory BusinessDetail$Query$Business$Review.fromJson(
          Map<String, dynamic> json) =>
      _$BusinessDetail$Query$Business$ReviewFromJson(json);

  String id;

  int rating;

  @JsonKey(name: 'time_created')
  String timeCreated;

  BusinessDetail$Query$Business$Review$User user;

  String text;

  String url;

  @override
  List<Object> get props => [id, rating, timeCreated, user, text, url];
  Map<String, dynamic> toJson() =>
      _$BusinessDetail$Query$Business$ReviewToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BusinessDetail$Query$Business with EquatableMixin {
  BusinessDetail$Query$Business();

  factory BusinessDetail$Query$Business.fromJson(Map<String, dynamic> json) =>
      _$BusinessDetail$Query$BusinessFromJson(json);

  String id;

  String name;

  String url;

  String price;

  double rating;

  double distance;

  @JsonKey(name: 'review_count')
  int reviewCount;

  String phone;

  @JsonKey(name: 'display_phone')
  String displayPhone;

  List<BusinessDetail$Query$Business$Category> categories;

  BusinessDetail$Query$Business$Location location;

  BusinessDetail$Query$Business$Coordinates coordinates;

  List<String> photos;

  List<BusinessDetail$Query$Business$Hours> hours;

  List<BusinessDetail$Query$Business$Review> reviews;

  @override
  List<Object> get props => [
        id,
        name,
        url,
        price,
        rating,
        distance,
        reviewCount,
        phone,
        displayPhone,
        categories,
        location,
        coordinates,
        photos,
        hours,
        reviews
      ];
  Map<String, dynamic> toJson() => _$BusinessDetail$Query$BusinessToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BusinessDetail$Query with EquatableMixin {
  BusinessDetail$Query();

  factory BusinessDetail$Query.fromJson(Map<String, dynamic> json) =>
      _$BusinessDetail$QueryFromJson(json);

  BusinessDetail$Query$Business business;

  @override
  List<Object> get props => [business];
  Map<String, dynamic> toJson() => _$BusinessDetail$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchBusinessesArguments extends JsonSerializable with EquatableMixin {
  SearchBusinessesArguments(
      {this.location,
      this.latitude,
      this.longitude,
      this.searchTerm,
      this.radius,
      this.categories,
      this.price,
      this.limit,
      this.offset});

  @override
  factory SearchBusinessesArguments.fromJson(Map<String, dynamic> json) =>
      _$SearchBusinessesArgumentsFromJson(json);

  final String location;

  final double latitude;

  final double longitude;

  final String searchTerm;

  final double radius;

  final String categories;

  final String price;

  final int limit;

  final int offset;

  @override
  List<Object> get props => [
        location,
        latitude,
        longitude,
        searchTerm,
        radius,
        categories,
        price,
        limit,
        offset
      ];
  @override
  Map<String, dynamic> toJson() => _$SearchBusinessesArgumentsToJson(this);
}

class SearchBusinessesQuery
    extends GraphQLQuery<SearchBusinesses$Query, SearchBusinessesArguments> {
  SearchBusinessesQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'SearchBusinesses'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'location')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'latitude')),
              type: NamedTypeNode(
                  name: NameNode(value: 'Float'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'longitude')),
              type: NamedTypeNode(
                  name: NameNode(value: 'Float'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'searchTerm')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'radius')),
              type: NamedTypeNode(
                  name: NameNode(value: 'Float'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'categories')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'price')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'limit')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'offset')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'search'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'location'),
                    value: VariableNode(name: NameNode(value: 'location'))),
                ArgumentNode(
                    name: NameNode(value: 'latitude'),
                    value: VariableNode(name: NameNode(value: 'latitude'))),
                ArgumentNode(
                    name: NameNode(value: 'longitude'),
                    value: VariableNode(name: NameNode(value: 'longitude'))),
                ArgumentNode(
                    name: NameNode(value: 'term'),
                    value: VariableNode(name: NameNode(value: 'searchTerm'))),
                ArgumentNode(
                    name: NameNode(value: 'radius'),
                    value: VariableNode(name: NameNode(value: 'radius'))),
                ArgumentNode(
                    name: NameNode(value: 'categories'),
                    value: VariableNode(name: NameNode(value: 'categories'))),
                ArgumentNode(
                    name: NameNode(value: 'price'),
                    value: VariableNode(name: NameNode(value: 'price'))),
                ArgumentNode(
                    name: NameNode(value: 'limit'),
                    value: VariableNode(name: NameNode(value: 'limit'))),
                ArgumentNode(
                    name: NameNode(value: 'offset'),
                    value: VariableNode(name: NameNode(value: 'offset')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'total'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'business'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'url'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'price'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'rating'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'distance'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'categories'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'title'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'alias'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'location'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'city'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'address1'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'coordinates'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'latitude'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'longitude'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'photos'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'hours'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'is_open_now'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'SearchBusinesses';

  @override
  final SearchBusinessesArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  SearchBusinesses$Query parse(Map<String, dynamic> json) =>
      SearchBusinesses$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class BusinessDetailArguments extends JsonSerializable with EquatableMixin {
  BusinessDetailArguments({this.id});

  @override
  factory BusinessDetailArguments.fromJson(Map<String, dynamic> json) =>
      _$BusinessDetailArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$BusinessDetailArgumentsToJson(this);
}

class BusinessDetailQuery
    extends GraphQLQuery<BusinessDetail$Query, BusinessDetailArguments> {
  BusinessDetailQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'BusinessDetail'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'business'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'price'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'rating'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'distance'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'review_count'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'phone'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'display_phone'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'categories'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'title'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'alias'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'location'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'city'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'address1'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'formatted_address'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'coordinates'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'latitude'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'longitude'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'photos'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'hours'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'open'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'end'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'start'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'day'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'is_open_now'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'reviews'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'rating'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'time_created'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'user'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'profile_url'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'image_url'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'name'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'text'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'url'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'BusinessDetail';

  @override
  final BusinessDetailArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  BusinessDetail$Query parse(Map<String, dynamic> json) =>
      BusinessDetail$Query.fromJson(json);
}
