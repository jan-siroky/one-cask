// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Bottle _$BottleFromJson(Map<String, dynamic> json) {
  return _Bottle.fromJson(json);
}

/// @nodoc
mixin _$Bottle {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get collection => throw _privateConstructorUsedError;
  String get currentAge => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<Details>? get details => throw _privateConstructorUsedError;
  TastingNotes? get tastingNotes => throw _privateConstructorUsedError;
  TastingNotes? get yourNotes => throw _privateConstructorUsedError;
  List<History>? get history => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BottleCopyWith<Bottle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottleCopyWith<$Res> {
  factory $BottleCopyWith(Bottle value, $Res Function(Bottle) then) =
      _$BottleCopyWithImpl<$Res, Bottle>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String year,
      String quantity,
      String number,
      String collection,
      String currentAge,
      String? imageUrl,
      List<Details>? details,
      TastingNotes? tastingNotes,
      TastingNotes? yourNotes,
      List<History>? history});

  $TastingNotesCopyWith<$Res>? get tastingNotes;
  $TastingNotesCopyWith<$Res>? get yourNotes;
}

/// @nodoc
class _$BottleCopyWithImpl<$Res, $Val extends Bottle>
    implements $BottleCopyWith<$Res> {
  _$BottleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? year = null,
    Object? quantity = null,
    Object? number = null,
    Object? collection = null,
    Object? currentAge = null,
    Object? imageUrl = freezed,
    Object? details = freezed,
    Object? tastingNotes = freezed,
    Object? yourNotes = freezed,
    Object? history = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      currentAge: null == currentAge
          ? _value.currentAge
          : currentAge // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Details>?,
      tastingNotes: freezed == tastingNotes
          ? _value.tastingNotes
          : tastingNotes // ignore: cast_nullable_to_non_nullable
              as TastingNotes?,
      yourNotes: freezed == yourNotes
          ? _value.yourNotes
          : yourNotes // ignore: cast_nullable_to_non_nullable
              as TastingNotes?,
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<History>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TastingNotesCopyWith<$Res>? get tastingNotes {
    if (_value.tastingNotes == null) {
      return null;
    }

    return $TastingNotesCopyWith<$Res>(_value.tastingNotes!, (value) {
      return _then(_value.copyWith(tastingNotes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TastingNotesCopyWith<$Res>? get yourNotes {
    if (_value.yourNotes == null) {
      return null;
    }

    return $TastingNotesCopyWith<$Res>(_value.yourNotes!, (value) {
      return _then(_value.copyWith(yourNotes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BottleImplCopyWith<$Res> implements $BottleCopyWith<$Res> {
  factory _$$BottleImplCopyWith(
          _$BottleImpl value, $Res Function(_$BottleImpl) then) =
      __$$BottleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String year,
      String quantity,
      String number,
      String collection,
      String currentAge,
      String? imageUrl,
      List<Details>? details,
      TastingNotes? tastingNotes,
      TastingNotes? yourNotes,
      List<History>? history});

  @override
  $TastingNotesCopyWith<$Res>? get tastingNotes;
  @override
  $TastingNotesCopyWith<$Res>? get yourNotes;
}

/// @nodoc
class __$$BottleImplCopyWithImpl<$Res>
    extends _$BottleCopyWithImpl<$Res, _$BottleImpl>
    implements _$$BottleImplCopyWith<$Res> {
  __$$BottleImplCopyWithImpl(
      _$BottleImpl _value, $Res Function(_$BottleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? year = null,
    Object? quantity = null,
    Object? number = null,
    Object? collection = null,
    Object? currentAge = null,
    Object? imageUrl = freezed,
    Object? details = freezed,
    Object? tastingNotes = freezed,
    Object? yourNotes = freezed,
    Object? history = freezed,
  }) {
    return _then(_$BottleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      currentAge: null == currentAge
          ? _value.currentAge
          : currentAge // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Details>?,
      tastingNotes: freezed == tastingNotes
          ? _value.tastingNotes
          : tastingNotes // ignore: cast_nullable_to_non_nullable
              as TastingNotes?,
      yourNotes: freezed == yourNotes
          ? _value.yourNotes
          : yourNotes // ignore: cast_nullable_to_non_nullable
              as TastingNotes?,
      history: freezed == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<History>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BottleImpl implements _Bottle {
  const _$BottleImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.year,
      required this.quantity,
      required this.number,
      required this.collection,
      required this.currentAge,
      this.imageUrl,
      final List<Details>? details,
      this.tastingNotes,
      this.yourNotes,
      final List<History>? history})
      : _details = details,
        _history = history;

  factory _$BottleImpl.fromJson(Map<String, dynamic> json) =>
      _$$BottleImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String year;
  @override
  final String quantity;
  @override
  final String number;
  @override
  final String collection;
  @override
  final String currentAge;
  @override
  final String? imageUrl;
  final List<Details>? _details;
  @override
  List<Details>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TastingNotes? tastingNotes;
  @override
  final TastingNotes? yourNotes;
  final List<History>? _history;
  @override
  List<History>? get history {
    final value = _history;
    if (value == null) return null;
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Bottle(id: $id, name: $name, description: $description, year: $year, quantity: $quantity, number: $number, collection: $collection, currentAge: $currentAge, imageUrl: $imageUrl, details: $details, tastingNotes: $tastingNotes, yourNotes: $yourNotes, history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            (identical(other.currentAge, currentAge) ||
                other.currentAge == currentAge) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.tastingNotes, tastingNotes) ||
                other.tastingNotes == tastingNotes) &&
            (identical(other.yourNotes, yourNotes) ||
                other.yourNotes == yourNotes) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      year,
      quantity,
      number,
      collection,
      currentAge,
      imageUrl,
      const DeepCollectionEquality().hash(_details),
      tastingNotes,
      yourNotes,
      const DeepCollectionEquality().hash(_history));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BottleImplCopyWith<_$BottleImpl> get copyWith =>
      __$$BottleImplCopyWithImpl<_$BottleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BottleImplToJson(
      this,
    );
  }
}

abstract class _Bottle implements Bottle {
  const factory _Bottle(
      {required final String id,
      required final String name,
      required final String description,
      required final String year,
      required final String quantity,
      required final String number,
      required final String collection,
      required final String currentAge,
      final String? imageUrl,
      final List<Details>? details,
      final TastingNotes? tastingNotes,
      final TastingNotes? yourNotes,
      final List<History>? history}) = _$BottleImpl;

  factory _Bottle.fromJson(Map<String, dynamic> json) = _$BottleImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get year;
  @override
  String get quantity;
  @override
  String get number;
  @override
  String get collection;
  @override
  String get currentAge;
  @override
  String? get imageUrl;
  @override
  List<Details>? get details;
  @override
  TastingNotes? get tastingNotes;
  @override
  TastingNotes? get yourNotes;
  @override
  List<History>? get history;
  @override
  @JsonKey(ignore: true)
  _$$BottleImplCopyWith<_$BottleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Details _$DetailsFromJson(Map<String, dynamic> json) {
  return _Details.fromJson(json);
}

/// @nodoc
mixin _$Details {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsCopyWith<Details> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsCopyWith<$Res> {
  factory $DetailsCopyWith(Details value, $Res Function(Details) then) =
      _$DetailsCopyWithImpl<$Res, Details>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$DetailsCopyWithImpl<$Res, $Val extends Details>
    implements $DetailsCopyWith<$Res> {
  _$DetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsImplCopyWith<$Res> implements $DetailsCopyWith<$Res> {
  factory _$$DetailsImplCopyWith(
          _$DetailsImpl value, $Res Function(_$DetailsImpl) then) =
      __$$DetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$DetailsImplCopyWithImpl<$Res>
    extends _$DetailsCopyWithImpl<$Res, _$DetailsImpl>
    implements _$$DetailsImplCopyWith<$Res> {
  __$$DetailsImplCopyWithImpl(
      _$DetailsImpl _value, $Res Function(_$DetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$DetailsImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsImpl implements _Details {
  const _$DetailsImpl({required this.title, required this.description});

  factory _$DetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsImplFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'Details(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsImplCopyWith<_$DetailsImpl> get copyWith =>
      __$$DetailsImplCopyWithImpl<_$DetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsImplToJson(
      this,
    );
  }
}

abstract class _Details implements Details {
  const factory _Details(
      {required final String title,
      required final String description}) = _$DetailsImpl;

  factory _Details.fromJson(Map<String, dynamic> json) = _$DetailsImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$DetailsImplCopyWith<_$DetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TastingNotes _$TastingNotesFromJson(Map<String, dynamic> json) {
  return _TastingNotes.fromJson(json);
}

/// @nodoc
mixin _$TastingNotes {
  String? get author => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  List<TastingNote> get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TastingNotesCopyWith<TastingNotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TastingNotesCopyWith<$Res> {
  factory $TastingNotesCopyWith(
          TastingNotes value, $Res Function(TastingNotes) then) =
      _$TastingNotesCopyWithImpl<$Res, TastingNotes>;
  @useResult
  $Res call({String? author, String? videoUrl, List<TastingNote> notes});
}

/// @nodoc
class _$TastingNotesCopyWithImpl<$Res, $Val extends TastingNotes>
    implements $TastingNotesCopyWith<$Res> {
  _$TastingNotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? videoUrl = freezed,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<TastingNote>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TastingNotesImplCopyWith<$Res>
    implements $TastingNotesCopyWith<$Res> {
  factory _$$TastingNotesImplCopyWith(
          _$TastingNotesImpl value, $Res Function(_$TastingNotesImpl) then) =
      __$$TastingNotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? author, String? videoUrl, List<TastingNote> notes});
}

/// @nodoc
class __$$TastingNotesImplCopyWithImpl<$Res>
    extends _$TastingNotesCopyWithImpl<$Res, _$TastingNotesImpl>
    implements _$$TastingNotesImplCopyWith<$Res> {
  __$$TastingNotesImplCopyWithImpl(
      _$TastingNotesImpl _value, $Res Function(_$TastingNotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? videoUrl = freezed,
    Object? notes = null,
  }) {
    return _then(_$TastingNotesImpl(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<TastingNote>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TastingNotesImpl implements _TastingNotes {
  const _$TastingNotesImpl(
      {this.author, this.videoUrl, required final List<TastingNote> notes})
      : _notes = notes;

  factory _$TastingNotesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TastingNotesImplFromJson(json);

  @override
  final String? author;
  @override
  final String? videoUrl;
  final List<TastingNote> _notes;
  @override
  List<TastingNote> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'TastingNotes(author: $author, videoUrl: $videoUrl, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TastingNotesImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, author, videoUrl,
      const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TastingNotesImplCopyWith<_$TastingNotesImpl> get copyWith =>
      __$$TastingNotesImplCopyWithImpl<_$TastingNotesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TastingNotesImplToJson(
      this,
    );
  }
}

abstract class _TastingNotes implements TastingNotes {
  const factory _TastingNotes(
      {final String? author,
      final String? videoUrl,
      required final List<TastingNote> notes}) = _$TastingNotesImpl;

  factory _TastingNotes.fromJson(Map<String, dynamic> json) =
      _$TastingNotesImpl.fromJson;

  @override
  String? get author;
  @override
  String? get videoUrl;
  @override
  List<TastingNote> get notes;
  @override
  @JsonKey(ignore: true)
  _$$TastingNotesImplCopyWith<_$TastingNotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TastingNote _$TastingNoteFromJson(Map<String, dynamic> json) {
  return _TastingNote.fromJson(json);
}

/// @nodoc
mixin _$TastingNote {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TastingNoteCopyWith<TastingNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TastingNoteCopyWith<$Res> {
  factory $TastingNoteCopyWith(
          TastingNote value, $Res Function(TastingNote) then) =
      _$TastingNoteCopyWithImpl<$Res, TastingNote>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$TastingNoteCopyWithImpl<$Res, $Val extends TastingNote>
    implements $TastingNoteCopyWith<$Res> {
  _$TastingNoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TastingNoteImplCopyWith<$Res>
    implements $TastingNoteCopyWith<$Res> {
  factory _$$TastingNoteImplCopyWith(
          _$TastingNoteImpl value, $Res Function(_$TastingNoteImpl) then) =
      __$$TastingNoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$TastingNoteImplCopyWithImpl<$Res>
    extends _$TastingNoteCopyWithImpl<$Res, _$TastingNoteImpl>
    implements _$$TastingNoteImplCopyWith<$Res> {
  __$$TastingNoteImplCopyWithImpl(
      _$TastingNoteImpl _value, $Res Function(_$TastingNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$TastingNoteImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TastingNoteImpl implements _TastingNote {
  const _$TastingNoteImpl({required this.title, required this.description});

  factory _$TastingNoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$TastingNoteImplFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'TastingNote(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TastingNoteImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TastingNoteImplCopyWith<_$TastingNoteImpl> get copyWith =>
      __$$TastingNoteImplCopyWithImpl<_$TastingNoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TastingNoteImplToJson(
      this,
    );
  }
}

abstract class _TastingNote implements TastingNote {
  const factory _TastingNote(
      {required final String title,
      required final String description}) = _$TastingNoteImpl;

  factory _TastingNote.fromJson(Map<String, dynamic> json) =
      _$TastingNoteImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$TastingNoteImplCopyWith<_$TastingNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

History _$HistoryFromJson(Map<String, dynamic> json) {
  return _History.fromJson(json);
}

/// @nodoc
mixin _$History {
  String get label => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get attachments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryCopyWith<History> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryCopyWith<$Res> {
  factory $HistoryCopyWith(History value, $Res Function(History) then) =
      _$HistoryCopyWithImpl<$Res, History>;
  @useResult
  $Res call(
      {String label,
      String title,
      String description,
      List<String> attachments});
}

/// @nodoc
class _$HistoryCopyWithImpl<$Res, $Val extends History>
    implements $HistoryCopyWith<$Res> {
  _$HistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? title = null,
    Object? description = null,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryImplCopyWith<$Res> implements $HistoryCopyWith<$Res> {
  factory _$$HistoryImplCopyWith(
          _$HistoryImpl value, $Res Function(_$HistoryImpl) then) =
      __$$HistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label,
      String title,
      String description,
      List<String> attachments});
}

/// @nodoc
class __$$HistoryImplCopyWithImpl<$Res>
    extends _$HistoryCopyWithImpl<$Res, _$HistoryImpl>
    implements _$$HistoryImplCopyWith<$Res> {
  __$$HistoryImplCopyWithImpl(
      _$HistoryImpl _value, $Res Function(_$HistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? title = null,
    Object? description = null,
    Object? attachments = null,
  }) {
    return _then(_$HistoryImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryImpl implements _History {
  const _$HistoryImpl(
      {required this.label,
      required this.title,
      required this.description,
      required final List<String> attachments})
      : _attachments = attachments;

  factory _$HistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryImplFromJson(json);

  @override
  final String label;
  @override
  final String title;
  @override
  final String description;
  final List<String> _attachments;
  @override
  List<String> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'History(label: $label, title: $title, description: $description, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, title, description,
      const DeepCollectionEquality().hash(_attachments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryImplCopyWith<_$HistoryImpl> get copyWith =>
      __$$HistoryImplCopyWithImpl<_$HistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryImplToJson(
      this,
    );
  }
}

abstract class _History implements History {
  const factory _History(
      {required final String label,
      required final String title,
      required final String description,
      required final List<String> attachments}) = _$HistoryImpl;

  factory _History.fromJson(Map<String, dynamic> json) = _$HistoryImpl.fromJson;

  @override
  String get label;
  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get attachments;
  @override
  @JsonKey(ignore: true)
  _$$HistoryImplCopyWith<_$HistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
