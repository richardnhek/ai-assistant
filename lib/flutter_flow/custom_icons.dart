import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _icomoonFamily = 'Icomoon';
  static const String _icomoonv2Family = 'Icomoonv2';
  static const String _pyiFamily = 'Pyi';

  // icomoon
  static const IconData ktranscriptSent =
      IconData(0xe900, fontFamily: _icomoonFamily);

  // icomoonv2
  static const IconData kdenied =
      IconData(0xe900, fontFamily: _icomoonv2Family);
  static const IconData kgranted =
      IconData(0xe901, fontFamily: _icomoonv2Family);

  // pyi
  static const IconData karrowNe = IconData(0xe900, fontFamily: _pyiFamily);
  static const IconData krecord = IconData(0xe901, fontFamily: _pyiFamily);
  static const IconData ksend = IconData(0xe902, fontFamily: _pyiFamily);
  static const IconData kredo = IconData(0xe903, fontFamily: _pyiFamily);
  static const IconData kmessage = IconData(0xe904, fontFamily: _pyiFamily);
}
