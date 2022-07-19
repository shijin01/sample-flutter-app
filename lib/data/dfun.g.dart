// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dfun.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StudAdapter extends TypeAdapter<Stud> {
  @override
  final int typeId = 1;

  @override
  Stud read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Stud(
      name: fields[1] as String,
      age: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Stud obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.age);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
