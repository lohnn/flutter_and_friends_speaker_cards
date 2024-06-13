import 'dart:ui' as ui;

import 'package:ff_speaker_cards/ff_card/ff_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SponsorCard extends FFCard {
  final String type;
  final Widget image;
  final String url;

  const SponsorCard({
    required super.name,
    required this.type,
    required this.image,
    super.key,
    required this.url,
  });

  @override
  Object get tag => name;

  @override
  double get dateOffset => 0;

  @override
  Offset get ffLogoOffset => const Offset(200, 90);

  @override
  Iterable<Widget> buildRightSide(
    BuildContext context,
    BoxConstraints boxConstraints,
  ) sync* {
    yield Positioned(
      top: 150,
      right: 0,
      width: boxConstraints.maxWidth,
      child: const Center(
        child: Text(
          'Sponsor presentation',
          maxLines: 1,
          style: TextStyle(
            fontSize: 55,
            fontFamily: 'Futura',
            color: Colors.white,
          ),
        ),
      ),
    );

    // Image shadow
    const double logoWidth = 600;
    const double logoHeight = 300;

    yield Positioned(
      top: 0,
      bottom: 0,
      right: 0,
      width: boxConstraints.maxWidth,
      child: Center(
        child: Transform.translate(
          offset: const Offset(16, 16),
          child: SizedBox(
            width: logoWidth,
            height: logoHeight,
            child: FittedBox(
              child: DropShadowedImage(image: image),
            ),
          ),
        ),
      ),
    );

    yield Positioned(
      top: 0,
      bottom: 0,
      right: 0,
      width: boxConstraints.maxWidth,
      child: Center(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              launchUrlString(url);
            },
            child: SizedBox(
              width: logoWidth,
              height: logoHeight,
              child: FittedBox(
                child: image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DropShadowedImage extends StatelessWidget {
  final Widget image;
  final double sigma;

  const DropShadowedImage({
    super.key,
    required this.image,
    this.sigma = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ui.ImageFilter.blur(
        sigmaX: sigma,
        sigmaY: sigma,
        tileMode: TileMode.decal,
      ),
      child: ColorFiltered(
        colorFilter: const ColorFilter.mode(
          Colors.black38,
          BlendMode.srcIn,
        ),
        child: image,
      ),
      // color: const Color.fromRGBO(0, 0, 0, 0.3),
      // fit: BoxFit.contain,
      // ),
    );
  }
}
