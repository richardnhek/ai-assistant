// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConversationStruct extends BaseStruct {
  ConversationStruct({
    String? question,
    String? answer,
    String? audioUrl,
  })  : _question = question,
        _answer = answer,
        _audioUrl = audioUrl;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;
  bool hasQuestion() => _question != null;

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  set answer(String? val) => _answer = val;
  bool hasAnswer() => _answer != null;

  // "audioUrl" field.
  String? _audioUrl;
  String get audioUrl => _audioUrl ?? '';
  set audioUrl(String? val) => _audioUrl = val;
  bool hasAudioUrl() => _audioUrl != null;

  static ConversationStruct fromMap(Map<String, dynamic> data) =>
      ConversationStruct(
        question: data['question'] as String?,
        answer: data['answer'] as String?,
        audioUrl: data['audioUrl'] as String?,
      );

  static ConversationStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ConversationStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'question': _question,
        'answer': _answer,
        'audioUrl': _audioUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'question': serializeParam(
          _question,
          ParamType.String,
        ),
        'answer': serializeParam(
          _answer,
          ParamType.String,
        ),
        'audioUrl': serializeParam(
          _audioUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static ConversationStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConversationStruct(
        question: deserializeParam(
          data['question'],
          ParamType.String,
          false,
        ),
        answer: deserializeParam(
          data['answer'],
          ParamType.String,
          false,
        ),
        audioUrl: deserializeParam(
          data['audioUrl'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ConversationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConversationStruct &&
        question == other.question &&
        answer == other.answer &&
        audioUrl == other.audioUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([question, answer, audioUrl]);
}

ConversationStruct createConversationStruct({
  String? question,
  String? answer,
  String? audioUrl,
}) =>
    ConversationStruct(
      question: question,
      answer: answer,
      audioUrl: audioUrl,
    );
