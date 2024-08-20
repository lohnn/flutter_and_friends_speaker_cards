import 'dart:convert';
import 'dart:typed_data';

import 'package:ff_card/src/download_image/download_image.dart';
import 'package:web/web.dart';

DownloadImage getInstance() => const DownloadImageWeb();

class DownloadImageWeb implements DownloadImage {
  const DownloadImageWeb();

  @override
  bool get isSupported => true;

  @override
  void startDownload(Uint8List bytes, String downloadName) {
    final base64Data = base64Encode(bytes);
    final anchor = HTMLAnchorElement()
      ..href = 'data:application/octet-stream;base64,$base64Data'
      ..target = 'blank'
      ..download = downloadName;

    // trigger download
    document.body!.append(anchor);
    anchor.click();
    anchor.remove();
  }
}
