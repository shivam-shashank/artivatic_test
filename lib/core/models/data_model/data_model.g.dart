// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModel _$$_DataModelFromJson(Map<String, dynamic> json) => _$_DataModel(
      title: json['title'] as String? ?? '',
      rows: (json['rows'] as List<dynamic>?)
              ?.map((e) => Row.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DataModelToJson(_$_DataModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'rows': instance.rows,
    };

_$_Row _$$_RowFromJson(Map<String, dynamic> json) => _$_Row(
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      imageHref: json['imageHref'] as String? ?? '',
    );

Map<String, dynamic> _$$_RowToJson(_$_Row instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'imageHref': instance.imageHref,
    };
