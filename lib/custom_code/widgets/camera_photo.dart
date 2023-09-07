// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:camera/camera.dart';
import 'dart:typed_data';

class CameraPhoto extends StatefulWidget {
  const CameraPhoto({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _CameraPhotoState createState() => _CameraPhotoState();
}

class _CameraPhotoState extends State<CameraPhoto> {
  CameraController? controller;
  late Future<List<CameraDescription>> _cameras;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    if (cameras.isNotEmpty) {
      controller = CameraController(cameras[0], ResolutionPreset.max);
      await controller!.initialize();
      if (mounted) {
        setState(() {});
      }
    }
  }

  /*Future<void> _capturePhoto() async {
    if (controller != null && FFAppState().makePhoto) {
      try {
        final XFile file = await controller!.takePicture();
        Uint8List fileAsBytes = await file.readAsBytes();
        FFAppState().update(() {
          FFAppState().makePhoto = false;
          FFAppState().index = FFAppState().index + 1;
          // Do something with the captured image data (e.g., upload it)
        });
      } catch (e) {
        // Handle any errors that occur during photo capture
      }
    }
  }*/

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (controller == null || !controller!.value.isInitialized) {
      return Center(child: CircularProgressIndicator());
    }

    return GestureDetector(
      //onTap: _capturePhoto,
      child: CameraPreview(controller!),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
