// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  String get title => throw _privateConstructorUsedError;
  List<Rows> get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res>;
  $Res call({String title, List<Rows> rows});
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res> implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  final DataModel _value;
  // ignore: unused_field
  final $Res Function(DataModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? rows = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rows: rows == freezed
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<Rows>,
    ));
  }
}

/// @nodoc
abstract class _$DataModelCopyWith<$Res> implements $DataModelCopyWith<$Res> {
  factory _$DataModelCopyWith(
          _DataModel value, $Res Function(_DataModel) then) =
      __$DataModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, List<Rows> rows});
}

/// @nodoc
class __$DataModelCopyWithImpl<$Res> extends _$DataModelCopyWithImpl<$Res>
    implements _$DataModelCopyWith<$Res> {
  __$DataModelCopyWithImpl(_DataModel _value, $Res Function(_DataModel) _then)
      : super(_value, (v) => _then(v as _DataModel));

  @override
  _DataModel get _value => super._value as _DataModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? rows = freezed,
  }) {
    return _then(_DataModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rows: rows == freezed
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<Rows>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModel implements _DataModel {
  const _$_DataModel(
      {this.title = 'No Title', final List<Rows> rows = const []})
      : _rows = rows;

  factory _$_DataModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataModelFromJson(json);

  @override
  @JsonKey()
  final String title;
  final List<Rows> _rows;
  @override
  @JsonKey()
  List<Rows> get rows {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rows);
  }

  @override
  String toString() {
    return 'DataModel(title: $title, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.rows, rows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(rows));

  @JsonKey(ignore: true)
  @override
  _$DataModelCopyWith<_DataModel> get copyWith =>
      __$DataModelCopyWithImpl<_DataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataModelToJson(this);
  }
}

abstract class _DataModel implements DataModel {
  const factory _DataModel({final String title, final List<Rows> rows}) =
      _$_DataModel;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$_DataModel.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  List<Rows> get rows => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataModelCopyWith<_DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Rows _$RowsFromJson(Map<String, dynamic> json) {
  return _Rows.fromJson(json);
}

/// @nodoc
mixin _$Rows {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageHref => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RowsCopyWith<Rows> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RowsCopyWith<$Res> {
  factory $RowsCopyWith(Rows value, $Res Function(Rows) then) =
      _$RowsCopyWithImpl<$Res>;
  $Res call({String title, String description, String imageHref});
}

/// @nodoc
class _$RowsCopyWithImpl<$Res> implements $RowsCopyWith<$Res> {
  _$RowsCopyWithImpl(this._value, this._then);

  final Rows _value;
  // ignore: unused_field
  final $Res Function(Rows) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? imageHref = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageHref: imageHref == freezed
          ? _value.imageHref
          : imageHref // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RowsCopyWith<$Res> implements $RowsCopyWith<$Res> {
  factory _$RowsCopyWith(_Rows value, $Res Function(_Rows) then) =
      __$RowsCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description, String imageHref});
}

/// @nodoc
class __$RowsCopyWithImpl<$Res> extends _$RowsCopyWithImpl<$Res>
    implements _$RowsCopyWith<$Res> {
  __$RowsCopyWithImpl(_Rows _value, $Res Function(_Rows) _then)
      : super(_value, (v) => _then(v as _Rows));

  @override
  _Rows get _value => super._value as _Rows;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? imageHref = freezed,
  }) {
    return _then(_Rows(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageHref: imageHref == freezed
          ? _value.imageHref
          : imageHref // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rows implements _Rows {
  const _$_Rows(
      {this.title = 'No Title',
      this.description = 'No Description',
      this.imageHref = ''});

  factory _$_Rows.fromJson(Map<String, dynamic> json) => _$$_RowsFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String imageHref;

  @override
  String toString() {
    return 'Rows(title: $title, description: $description, imageHref: $imageHref)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Rows &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageHref, imageHref));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageHref));

  @JsonKey(ignore: true)
  @override
  _$RowsCopyWith<_Rows> get copyWith =>
      __$RowsCopyWithImpl<_Rows>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RowsToJson(this);
  }
}

abstract class _Rows implements Rows {
  const factory _Rows(
      {final String title,
      final String description,
      final String imageHref}) = _$_Rows;

  factory _Rows.fromJson(Map<String, dynamic> json) = _$_Rows.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get imageHref => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RowsCopyWith<_Rows> get copyWith => throw _privateConstructorUsedError;
}
