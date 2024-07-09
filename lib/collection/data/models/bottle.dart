import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottle.freezed.dart';
part 'bottle.g.dart';

@freezed
class Bottle with _$Bottle {
  const factory Bottle({
    required String id,
    required String name,
    required String description,
    required String year,
    required String quantity,
    required String number,
    required String collection,
    required String currentAge,
    String? imageUrl,
    List<Details>? details,
    TastingNotes? tastingNotes,
    TastingNotes? yourNotes,
    List<History>? history,
  }) = _Bottle;

  factory Bottle.fromJson(Map<String, dynamic> json) => _$BottleFromJson(json);
}

@freezed
class Details with _$Details {
  const factory Details({
    required String title,
    required String description,
  }) = _Details;

  factory Details.fromJson(Map<String, dynamic> json) => _$DetailsFromJson(json);
}

@freezed
class TastingNotes with _$TastingNotes {
  const factory TastingNotes({
    String? author,
    String? videoUrl,
    required List<TastingNote> notes,
  }) = _TastingNotes;

  factory TastingNotes.fromJson(Map<String, dynamic> json) => _$TastingNotesFromJson(json);
}

@freezed
class TastingNote with _$TastingNote {
  const factory TastingNote({
    required String title,
    required String description,
  }) = _TastingNote;

  factory TastingNote.fromJson(Map<String, dynamic> json) => _$TastingNoteFromJson(json);
}

@freezed
class History with _$History {
  const factory History({
    required String label,
    required String title,
    required String description,
    required List<String> attachments,
  }) = _History;

  factory History.fromJson(Map<String, dynamic> json) => _$HistoryFromJson(json);
}
