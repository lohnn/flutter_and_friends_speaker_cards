import 'package:flutter/foundation.dart';

import 'download_platform_helper.dart'
    if (dart.library.html) './download_image_web.dart'
    if (dart.library.io) './download_image_native.dart';

abstract class DownloadImage {
  factory DownloadImage() => getInstance();

  void startDownload(ByteData byteData, String downloadName) {}
}
