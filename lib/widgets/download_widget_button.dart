import 'dart:ui';

import 'package:ff_speaker_cards/download_image/download_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DownloadWidgetButton extends StatefulWidget {
  const DownloadWidgetButton({
    super.key,
    required this.downloadImageKey,
    required this.name,
  });

  final GlobalKey<State<StatefulWidget>> downloadImageKey;
  final String name;

  @override
  State<DownloadWidgetButton> createState() => _DownloadWidgetButtonState();
}

class _DownloadWidgetButtonState extends State<DownloadWidgetButton> {
  late final DownloadImage downloadImage;
  bool isDownloading = false;

  @override
  void initState() {
    downloadImage = DownloadImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!downloadImage.isSupported) return Container();

    if (isDownloading) return const CircularProgressIndicator.adaptive();

    return IconButton(
      onPressed: isDownloading
          ? null
          : () async {
              try {
                setState(() => isDownloading = true);
                final boundary = widget.downloadImageKey.currentContext!
                    .findRenderObject() as RenderRepaintBoundary;
                final image = await boundary.toImage();
                final byteData = await image.toByteData(
                  format: ImageByteFormat.png,
                );
                await downloadImage.startDownload(
                  byteData!.buffer.asUint8List(),
                  '${widget.name}.png',
                );
              } finally {
                setState(() => isDownloading = false);
              }
            },
      icon: const Icon(Icons.download),
    );
  }
}
