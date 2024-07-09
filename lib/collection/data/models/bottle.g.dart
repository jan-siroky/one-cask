// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BottleImpl _$$BottleImplFromJson(Map<String, dynamic> json) => _$BottleImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      year: json['year'] as String,
      quantity: json['quantity'] as String,
      number: json['number'] as String,
      collection: json['collection'] as String,
      currentAge: json['currentAge'] as String,
      imageUrl: json['imageUrl'] as String?,
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => Details.fromJson(e as Map<String, dynamic>))
          .toList(),
      tastingNotes: json['tastingNotes'] == null
          ? null
          : TastingNotes.fromJson(json['tastingNotes'] as Map<String, dynamic>),
      yourNotes: json['yourNotes'] == null
          ? null
          : TastingNotes.fromJson(json['yourNotes'] as Map<String, dynamic>),
      history: (json['history'] as List<dynamic>?)
          ?.map((e) => History.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BottleImplToJson(_$BottleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'year': instance.year,
      'quantity': instance.quantity,
      'number': instance.number,
      'collection': instance.collection,
      'currentAge': instance.currentAge,
      'imageUrl': instance.imageUrl,
      'details': instance.details,
      'tastingNotes': instance.tastingNotes,
      'yourNotes': instance.yourNotes,
      'history': instance.history,
    };

_$DetailsImpl _$$DetailsImplFromJson(Map<String, dynamic> json) =>
    _$DetailsImpl(
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$DetailsImplToJson(_$DetailsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };

_$TastingNotesImpl _$$TastingNotesImplFromJson(Map<String, dynamic> json) =>
    _$TastingNotesImpl(
      author: json['author'] as String?,
      videoUrl: json['videoUrl'] as String?,
      notes: (json['notes'] as List<dynamic>)
          .map((e) => TastingNote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TastingNotesImplToJson(_$TastingNotesImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'videoUrl': instance.videoUrl,
      'notes': instance.notes,
    };

_$TastingNoteImpl _$$TastingNoteImplFromJson(Map<String, dynamic> json) =>
    _$TastingNoteImpl(
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$TastingNoteImplToJson(_$TastingNoteImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };

_$HistoryImpl _$$HistoryImplFromJson(Map<String, dynamic> json) =>
    _$HistoryImpl(
      label: json['label'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$HistoryImplToJson(_$HistoryImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'title': instance.title,
      'description': instance.description,
      'attachments': instance.attachments,
    };
