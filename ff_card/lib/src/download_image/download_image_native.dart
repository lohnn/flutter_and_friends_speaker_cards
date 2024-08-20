import 'dart:io';
import 'dart:typed_data';

import 'package:ff_card/src/download_image/download_image.dart';
import 'package:file_picker/file_picker.dart';

DownloadImage getInstance() => const DownloadImageNative();

class DownloadImageNative implements DownloadImage {
  const DownloadImageNative();

  @override
  bool get isSupported => true;

  @override
  Future<void> startDownload(Uint8List bytes, String downloadName) async {
    final path = await FilePicker.platform.saveFile(
      fileName: downloadName,
      type: FileType.image,
      bytes: bytes.buffer.asUint8List(),
    );

    switch (path) {
      case _? when Platform.isLinux || Platform.isWindows || Platform.isMacOS:
        await File(path).writeAsBytes(bytes);
      case _: // no-op
    }
  }
}
