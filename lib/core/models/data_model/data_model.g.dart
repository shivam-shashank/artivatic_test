// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModel _$$_DataModelFromJson(Map<String, dynamic> json) => _$_DataModel(
      title: json['title'] as String? ?? 'No Title',
      rows: (json['rows'] as List<dynamic>?)
              ?.map((e) => Rows.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DataModelToJson(_$_DataModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'rows': instance.rows,
    };

_$_Rows _$$_RowsFromJson(Map<String, dynamic> json) => _$_Rows(
      title: json['title'] as String? ?? 'No Title',
      description: json['description'] as String? ?? 'No Description',
      imageHref: json['imageHref'] as String? ?? '',
    );

Map<String, dynamic> _$$_RowsToJson(_$_Rows instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'imageHref': instance.imageHref,
    };
