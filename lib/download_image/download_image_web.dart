import 'dart:convert';

// ignore:avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:typed_data';

import 'package:ff_speaker_cards/download_image/download_image.dart';
import 'package:flutter/foundation.dart';

DownloadImage getInstance() => const DownloadImageWeb();

class DownloadImageWeb implements DownloadImage {
  const DownloadImageWeb();

  @override
  void startDownload(ByteData byteData, String downloadName) {
    final base64Data = base64Encode(byteData.buffer.asUint8List());
    final anchor =
        AnchorElement(href: 'data:application/octet-stream;base64,$base64Data')
          ..target = 'blank';
    anchor.download = downloadName;
    // trigger download
    document.body!.append(anchor);
    anchor.click();
    anchor.remove();
  }
}
