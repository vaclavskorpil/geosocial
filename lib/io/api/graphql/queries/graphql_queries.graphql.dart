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
class SearchBusinessesArguments extends JsonSerializable with EquatableMixin {
  SearchBusinessesArguments(
      {this.location,
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

  final String searchTerm;

  final double radius;

  final String categories;

  final String price;

  final int limit;

  final int offset;

  @override
  List<Object> get props =>
      [location, searchTerm, radius, categories, price, limit, offset];
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
