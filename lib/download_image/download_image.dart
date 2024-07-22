import 'dart:async';
import 'dart:typed_data';

import 'download_platform_helper.dart'
    if (dart.library.js_interop) './download_image_web.dart'
    if (dart.library.io) './download_image_native.dart';

abstract class DownloadImage {
  factory DownloadImage() => getInstance();

  bool get isSupported;

  FutureOr<void> startDownload(Uint8List bytes, String downloadName);
}
