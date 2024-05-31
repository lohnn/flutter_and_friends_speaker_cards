import 'dart:ui';

import 'package:ff_speaker_cards/download_image/download_image.dart';
import 'package:ff_speaker_cards/ff_card/ff_card_middle_section.dart';
import 'package:ff_speaker_cards/social.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_graphics/vector_graphics.dart';

class FFCard extends StatelessWidget {
  final Image image;
  final String type;
  final String name;
  final String title;
  final Social? social;
  final String category;
  final String categoryDescription;

  const FFCard({
    required this.image,
    required this.type,
    required this.name,
    required this.title,
    this.social,
    required this.category,
    required this.categoryDescription,
    super.key,
  });

  factory FFCard.speaker({
    required String name,
    required String title,
    required String photo,
    required String talk,
    Social? social,
  }) {
    return FFCard(
      type: 'SPEAKER PROFILE',
      name: name,
      title: title,
      image: Image.asset('assets/photos/$photo'),
      category: 'Talk',
      categoryDescription: talk,
      social: social,
    );
  }

  static const double width = 1600;
  static const double height = 900;

  @override
  Widget build(BuildContext context) {
    final downloadImageKey = GlobalKey();
    return FittedBox(
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
                  Positioned(
                    top: 151,
                    left: 335,
                    child: SizedBox(
                      width: 500,
                      height: 500,
                      child: ClipOval(
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: ColoredBox(
                            color: const Color(0xff8369F6),
                            child: image,
                          ),
                        ),
                      ),
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
                  Positioned(
                    top: 0,
                    right: 0,
                    width: 900,
                    height: 104,
                    child: Center(
                      child: Text(
                        type.toUpperCase(),
                        style: GoogleFonts.sourceSans3(
                          fontWeight: FontWeight.normal,
                          letterSpacing: 6.26,
                          fontSize: 31.3,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 267,
                    right: 16,
                    width: 900 - 209 - 16,
                    height: 104 + 104 + 36,
                    child: FFCardMiddleSection(
                      name: name,
                      title: title,
                      social: social,
                    ),
                  ),
                  Positioned(
                    bottom: 260,
                    right: 16,
                    width: 900 - 160 - 16,
                    height: 59,
                    child: Text(
                      category,
                      maxLines: 1,
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.w700,
                        fontSize: 47.12,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 54,
                    right: 16,
                    width: 900 - 160 - 16,
                    height: 204,
                    child: Text(
                      categoryDescription,
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.w600,
                        fontSize: 47.12,
                        color: const Color(0xffFFE2D8),
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
    );
  }
}
