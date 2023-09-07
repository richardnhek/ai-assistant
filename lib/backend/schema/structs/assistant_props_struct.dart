// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssistantPropsStruct extends BaseStruct {
  AssistantPropsStruct({
    String? name,
    String? subtitle,
    String? picture,
  })  : _name = name,
        _subtitle = subtitle,
        _picture = picture;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  set subtitle(String? val) => _subtitle = val;
  bool hasSubtitle() => _subtitle != null;

  // "picture" field.
  String? _picture;
  String get picture => _picture ?? '';
  set picture(String? val) => _picture = val;
  bool hasPicture() => _picture != null;

  static AssistantPropsStruct fromMap(Map<String, dynamic> data) =>
      AssistantPropsStruct(
        name: data['name'] as String?,
        subtitle: data['subtitle'] as String?,
        picture: data['picture'] as String?,
      );

  static AssistantPropsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? AssistantPropsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'subtitle': _subtitle,
        'picture': _picture,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'subtitle': serializeParam(
          _subtitle,
          ParamType.String,
        ),
        'picture': serializeParam(
          _picture,
          ParamType.String,
        ),
      }.withoutNulls;

  static AssistantPropsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AssistantPropsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        subtitle: deserializeParam(
          data['subtitle'],
          ParamType.String,
          false,
        ),
        picture: deserializeParam(
          data['picture'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AssistantPropsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssistantPropsStruct &&
        name == other.name &&
        subtitle == other.subtitle &&
        picture == other.picture;
  }

  @override
  int get hashCode => const ListEquality().hash([name, subtitle, picture]);
}

AssistantPropsStruct createAssistantPropsStruct({
  String? name,
  String? subtitle,
  String? picture,
}) =>
    AssistantPropsStruct(
      name: name,
      subtitle: subtitle,
      picture: picture,
    );
