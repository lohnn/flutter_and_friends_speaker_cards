import 'dart:ui' as ui;

import 'package:ff_speaker_cards/ff_card/ff_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SponsorCard extends FFCard {
  final String type;
  final ImageProvider image;
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
  Iterable<Widget> buildRightSide(
    BuildContext context,
    BoxConstraints boxConstraints,
  ) sync* {
    yield Positioned(
      top: 200,
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
              width: 585,
              height: 170,
              child: FittedBox(
                child: DropShadowedImage(imageProvider: image),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DropShadowedImage extends StatelessWidget {
  final ImageProvider imageProvider;
  final double sigma;

  const DropShadowedImage({
    super.key,
    required this.imageProvider,
    this.sigma = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.translate(
          offset: const Offset(16, 16),
          // offset: Offset.zero,
          child: ImageFiltered(
            imageFilter: ui.ImageFilter.blur(
              sigmaX: sigma,
              sigmaY: sigma,
              tileMode: TileMode.decal,
            ),
            child: Image(
              image: imageProvider,
              color: const Color.fromRGBO(0, 0, 0, 0.3),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Image(image: imageProvider),
      ],
    );
  }
}
