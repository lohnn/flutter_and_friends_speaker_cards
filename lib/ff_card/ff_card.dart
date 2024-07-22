import 'package:ff_speaker_cards/ff_card/speaker_card.dart';
import 'package:ff_speaker_cards/ff_card/sponsor_card.dart';
import 'package:ff_speaker_cards/social.dart';
import 'package:ff_speaker_cards/widgets/download_widget_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

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
      image: switch (logo) {
        final path when path.startsWith('svg/') => createCompatVectorGraphic(
            loader: AssetBytesLoader('assets/logos/$path'),
          ),
        final path => Image(
            image: AssetImage('assets/logos/$path'),
          ),
      },
      url: url,
    );
  }

  static const double width = 1600;
  static const double height = 900;

  double get dateOffset => 45;

  Offset get ffLogoOffset => const Offset(331.94, 55.85);

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
                      Positioned(
                        top: 0,
                        child: createCompatVectorGraphic(
                          loader: const AssetBytesLoader(
                            'assets/svgs/ff_card_background.svg',
                          ),
                        ),
                      ),
                      Positioned(
                        left: dateOffset,
                        bottom: 49,
                        width: 700,
                        child: const Text(
                          '1-3 SEPTEMBER - STOCKHOLM',
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
                      Positioned(
                        top: ffLogoOffset.dx,
                        left: ffLogoOffset.dy,
                        child: createCompatVectorGraphic(
                          loader: const AssetBytesLoader(
                            'assets/svgs/ff_logo.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: DownloadWidgetButton(
                    downloadImageKey: downloadImageKey,
                    name: name,
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
