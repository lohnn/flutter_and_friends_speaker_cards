import 'dart:ui' as ui;

import 'package:ff_card/src/ff_card/ff_card.dart';
import 'package:ff_card/src/sponsor_cards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SponsorCard extends FFCard {
  final Widget image;
  final String url;
  final SponsorLevel sponsorLevel;
  @override
  final String name;

  const SponsorCard({
    required this.sponsorLevel,
    required this.name,
    required this.image,
    super.key,
    required this.url,
    super.allowDownload = false,
    required super.downloadImageKey,
  });

  @override
  Object get tag => name;

  @override
  double get dateOffset => 0;

  @override
  Offset get ffLogoOffset => const Offset(90, 200);

  @override
  Iterable<Widget> buildRightSide(
    BuildContext context,
    BoxConstraints boxConstraints,
  ) sync* {
    yield Positioned(
      top: 150,
      right: 0,
      width: boxConstraints.maxWidth,
      child: Center(
        child: Text(
          sponsorLevel.levelText,
          maxLines: 1,
          style: GoogleFonts.poppins(
            fontSize: 55,
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
