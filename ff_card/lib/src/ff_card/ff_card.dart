import 'package:ff_card/src/ff_card/double_speaker_card.dart';
import 'package:ff_card/src/ff_card/speaker_card.dart';
import 'package:ff_card/src/ff_card/sponsor_card.dart';
import 'package:ff_card/src/pre_made_speaker_cards.dart';
import 'package:ff_card/src/social.dart';
import 'package:ff_card/src/sponsor_cards.dart';
import 'package:ff_card/src/widgets/download_widget_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

abstract class FFCard extends StatelessWidget {
  String get name;

  final bool allowDownload;

  const FFCard({
    super.key,
    required this.allowDownload,
  });

  factory FFCard.attendee({
    required String name,
    required String title,
    required String photo,
    Social? social,
    required String type,
    required String category,
    required String categoryDescription,
  }) {
    // TODO: Support creating attendee cards again
    throw UnimplementedError('Needs to be reimplemented');
    // return SpeakerCard(
    //   name: name,
    //   title: title,
    //   image: Image.network('assets/photos/$photo'),
    //   category: 'Talk',
    //   talkName: 'Person stuff',
    //   social: social,
    // );
  }

  factory FFCard.speaker({required Talk talk, bool allowDownload = false}) {
    return switch (talk) {
      Talk(:final coHost?) => DoubleSpeakerCard(
          host: talk.host,
          coHost: coHost,
          talkCategory: talk.category,
          talkTitle: talk.talkTitle,
          allowDownload: allowDownload,
        ),
      Talk() => SpeakerCard(
          host: talk.host,
          talkCategory: talk.category,
          talkTitle: talk.talkTitle,
          allowDownload: allowDownload,
        ),
    };
  }

  factory FFCard.sponsor({
    required SponsorLevel sponsorLevel,
    required String name,
    required String logo,
    required String url,
    bool allowDownload = false,
  }) {
    return SponsorCard(
      sponsorLevel: sponsorLevel,
      name: name,
      allowDownload: allowDownload,
      image: switch (logo) {
        final path when path.startsWith('svg/') => createCompatVectorGraphic(
            loader:
                AssetBytesLoader('assets/logos/$path', packageName: 'ff_card'),
          ),
        final path => Image(
            image: AssetImage(
              'assets/logos/$path',
              package: 'ff_card',
            ),
          ),
      },
      url: url,
    );
  }

  static const double width = 1600;
  static const double height = 900;

  double get dateOffset => 45;

  Offset get ffLogoOffset;

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
                          package: 'ff_card',
                          height: 900,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        child: createCompatVectorGraphic(
                          loader: const AssetBytesLoader(
                            'assets/svgs/ff_card_background.svg',
                            packageName: 'ff_card',
                          ),
                        ),
                      ),
                      Positioned(
                        left: dateOffset,
                        bottom: 30,
                        width: 700,
                        child: Column(
                          children: [
                            Text(
                              '31 AUGUST - 2 SEPTEMBER',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'STOCKHOLM',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
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
                        top: ffLogoOffset.dy,
                        left: ffLogoOffset.dx,
                        child: createCompatVectorGraphic(
                          loader: const AssetBytesLoader(
                            'assets/svgs/ff_logo.svg',
                            packageName: 'ff_card',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (allowDownload)
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
