// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'representative_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepresentativeResponse _$RepresentativeResponseFromJson(
        Map<String, dynamic> json) =>
    RepresentativeResponse(
      (json['idKhazna'] as num?)?.toInt(),
      (json['idMakhzan'] as num?)?.toInt(),
      (json['idFreaShrka'] as num?)?.toInt(),
      (json['lastname'] as num?)?.toInt(),
      json['khazna'] as String?,
      json['makhzan'] as String?,
      json['namemndob'] as String?,
      json['nameshrka'] as String?,
      json['avergSerSHra'] as String?,
    );

Map<String, dynamic> _$RepresentativeResponseToJson(
        RepresentativeResponse instance) =>
    <String, dynamic>{
      'idKhazna': instance.idKhazna,
      'idMakhzan': instance.idMakhzan,
      'idFreaShrka': instance.idFreaShrka,
      'lastname': instance.lastname,
      'khazna': instance.khazna,
      'makhzan': instance.makhzan,
      'namemndob': instance.namemndob,
      'nameshrka': instance.nameshrka,
      'avergSerSHra': instance.avergSerSHra,
    };
