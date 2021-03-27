// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FilterDTOAdapter extends TypeAdapter<_$_FilterDto> {
  @override
  final int typeId = 2;

  @override
  _$_FilterDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_FilterDto(
      fields[0] as String,
      fields[1] as String,
      fields[2] as double,
      (fields[3] as List)?.cast<int>(),
      (fields[4] as List)?.cast<Category>(),
      fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$_FilterDto obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.location)
      ..writeByte(1)
      ..write(obj.filterQuery)
      ..writeByte(2)
      ..write(obj.radius)
      ..writeByte(3)
      ..write(obj.priceLevel)
      ..writeByte(4)
      ..write(obj.categories)
      ..writeByte(5)
      ..write(obj.useMyLocation);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FilterDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
