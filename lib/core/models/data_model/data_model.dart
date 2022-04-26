// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

@freezed
abstract class DataModel with _$DataModel {
  const factory DataModel({
    @Default('No Title') String title,
    @Default([]) List<Rows> rows,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

@freezed
abstract class Rows with _$Rows {
  const factory Rows({
    @Default('No Title') String title,
    @Default('No Description') String description,
    @Default('') String imageHref,
  }) = _Rows;

  factory Rows.fromJson(Map<String, dynamic> json) => _$RowsFromJson(json);
}
