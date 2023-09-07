import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DialogCall {
  static Future<ApiCallResponse> call({
    String? pitch =
        ' We are working or we are thinking to create a business idea containing five persons working as a scout team.',
    String? followUpConversation = '',
    String? welcomeMessage = 'Hello I am Sarah',
    String? assistant = 'business_angel',
    String? finalFeedback = '',
    String? finalFeedbackAudio = '',
  }) {
    final body = '''
{
  "pitch": "${pitch}",
  "followUpConversation": "${followUpConversation}",
  "finalFeedbackAudio" : "${finalFeedbackAudio}",
  "finalFeedback" : "${finalFeedback}",
  "assistant": "${assistant}",
  "welcomeMessage": "${welcomeMessage}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Dialog',
      apiUrl: 'https://upluewmihqffmiaosnjn.functions.supabase.co/dialog',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
  static dynamic role(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.role''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message''',
      );
}

class PaidCheckoutCall {
  static Future<ApiCallResponse> call({
    String? fullName = '',
    String? email = '',
    bool? newsletter = true,
    String? coupon = '',
    dynamic? conversationJson,
    String? welcomeMessage = '',
    String? pitch = '',
    String? finalFeedback = '',
    String? assitant = '',
    int? feedbackStars,
  }) {
    final conversation = _serializeJson(conversationJson, true);
    final body = '''
{
  "user": {
    "fullName": "${fullName}",
    "email": "${email}"
  },
  "newsletter": ${newsletter},
  "coupon": "${coupon}",
  "conversation": {
    "welcomeMessage": "${welcomeMessage}",
    "pitch": "${pitch}",
    "followUpConversation": ${conversation},
    "finalFeedback": "${finalFeedback}",
    "assistant": "${assitant}"
  },
  "feedbackStars": ${feedbackStars}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Paid Checkout',
      apiUrl:
          'https://upluewmihqffmiaosnjn.functions.supabase.co/paid-checkout',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ChatGPTCompletionCall {
  static Future<ApiCallResponse> call({
    dynamic? messagesJson,
  }) {
    final messages = _serializeJson(messagesJson, true);
    final body = '''
{
  "model": "gpt-3.5-turbo-16k",
  "messages": ${messages}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ChatGPT Completion',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message''',
      );
  static dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
  static dynamic role(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.role''',
      );
}

class SpeechToTextCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? file,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Speech to Text',
      apiUrl:
          'https://upluewmihqffmiaosnjn.functions.supabase.co/audio-to-text',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SendEmailCall {
  static Future<ApiCallResponse> call({
    String? toEmail = '',
    String? subject = 'Pitch Your Idea',
    String? content = '',
  }) {
    final body = '''
{
  "toEmail": "${toEmail}",
  "subject": "${subject}",
  "content": "${content}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Email',
      apiUrl: 'https://jtcsewaheiydxbhyocto.supabase.co/functions/v1/hello',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ZapierHookCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) {
    final body = '''
${email}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ZapierHook',
      apiUrl: 'https://hooks.zapier.com/hooks/catch/14718622/39l9k9y/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
