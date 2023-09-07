// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DialogContentStruct extends BaseStruct {
  DialogContentStruct({
    String? role,
    String? content,
  })  : _role = role,
        _content = content;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;
  bool hasRole() => _role != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;
  bool hasContent() => _content != null;

  static DialogContentStruct fromMap(Map<String, dynamic> data) =>
      DialogContentStruct(
        role: data['role'] as String?,
        content: data['content'] as String?,
      );

  static DialogContentStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? DialogContentStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'role': _role,
        'content': _content,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
      }.withoutNulls;

  static DialogContentStruct fromSerializableMap(Map<String, dynamic> data) =>
      DialogContentStruct(
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DialogContentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DialogContentStruct &&
        role == other.role &&
        content == other.content;
  }

  @override
  int get hashCode => const ListEquality().hash([role, content]);
}

DialogContentStruct createDialogContentStruct({
  String? role,
  String? content,
}) =>
    DialogContentStruct(
      role: role,
      content: content,
    );
