import 'dart:typed_data';

import 'package:ff_speaker_cards/download_image/download_image.dart';

DownloadImage getInstance() => const DownloadImageNative();

class DownloadImageNative implements DownloadImage {
  const DownloadImageNative();

  @override
  void startDownload(ByteData byteData, String downloadName) {
    throw UnsupportedError('Unsupported Platform');
  }
}
