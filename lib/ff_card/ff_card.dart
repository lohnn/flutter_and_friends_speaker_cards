import 'dart:ui';

import 'package:ff_speaker_cards/download_image/download_image.dart';
import 'package:ff_speaker_cards/ff_card/speaker_card.dart';
import 'package:ff_speaker_cards/ff_card/sponsor_card.dart';
import 'package:ff_speaker_cards/social.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vector_graphics/vector_graphics.dart';

abstract class FFCard extends StatelessWidget {
  final String name;

  const FFCard({super.key, required this.name});

  factory FFCard.attendee({
    required String name,
    required String title,
    required String photo,
    Social? social,
    required String type,
    required String category,
    required String categoryDescription,
  }) {
    return SpeakerCard(
      type: 'SPEAKER PROFILE',
      name: name,
      title: title,
      image: Image.network('assets/photos/$photo'),
      category: 'Talk',
      categoryDescription: 'Person stuff',
      social: social,
    );
  }

  factory FFCard.speaker({
    required String name,
    required String title,
    required String photo,
    required String talk,
    Social? social,
  }) {
    return SpeakerCard(
      type: 'SPEAKER PROFILE',
      name: name,
      title: title,
      image: Image.asset('assets/photos/$photo'),
      category: 'Talk',
      categoryDescription: talk,
      social: social,
    );
  }

  factory FFCard.sponsor({
    required String name,
    required String logo,
    required String url,
  }) {
    return SponsorCard(
      name: name,
      type: 'Sponsor presentation',
      image: AssetImage('assets/logos/$logo'),
      url: url,
    );
  }

  static const double width = 1600;
  static const double height = 900;

  Object get tag;

  Iterable<Widget> buildRightSide(
    BuildContext context,
    BoxConstraints boxConstraints,
  );

  @nonVirtual
  @override
  Widget build(BuildContext context) {
    final downloadImageKey = GlobalKey();
    return Hero(
      tag: tag,
      child: Material(
        color: Colors.transparent,
        child: FittedBox(
          child: SizedBox(
            height: height,
            width: width,
            child: Stack(
              children: [
                RepaintBoundary(
                  key: downloadImageKey,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        child: Image.asset(
                          'assets/images/kulturhuset.png',
                          height: 900,
                        ),
                      ),
                      const Positioned(
                        top: 0,
                        child: VectorGraphic(
                          loader: AssetBytesLoader(
                            'assets/svgs/ff_card_background.svg',
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 106,
                        bottom: 49,
                        width: 578.97,
                        child: Text(
                          '3-5 SEPTEMBER - STOCKHOLM',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.03,
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ...buildRightSide(
                        context,
                        const BoxConstraints(
                          maxWidth: 900,
                          maxHeight: 900,
                        ),
                      ),
                      const Positioned(
                        top: 331.94,
                        left: 55.85,
                        child: VectorGraphic(
                          loader: AssetBytesLoader(
                            'assets/svgs/ff_logo.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (DownloadImage() case final downloadImage
                    when downloadImage.isSupported)
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: () async {
                        final boundary = downloadImageKey.currentContext!
                            .findRenderObject() as RenderRepaintBoundary;
                        final image = await boundary.toImage();
                        final byteData = await image.toByteData(
                          format: ImageByteFormat.png,
                        );
                        downloadImage.startDownload(byteData!, '$name.png');
                      },
                      icon: const Icon(Icons.download),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
