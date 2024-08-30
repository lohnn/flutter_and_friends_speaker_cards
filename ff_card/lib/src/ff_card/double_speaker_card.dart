import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_card/src/ff_card/ff_card.dart';
import 'package:ff_card/src/ff_card/ff_card_middle_section.dart';
import 'package:ff_card/src/pre_made_speaker_cards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoubleSpeakerCard extends FFCard {
  final Host host;
  final Host coHost;
  final String talkCategory;
  final String talkTitle;

  @override
  String get name => talkTitle;

  const DoubleSpeakerCard({
    required this.host,
    required this.coHost,
    required this.talkCategory,
    required this.talkTitle,
    super.allowDownload = false,
    required super.downloadImageKey,
    super.key,
  });

  @override
  Offset get ffLogoOffset => const Offset(135, 120);

  @override
  Object get tag =>
      'SPEAKER PROFILE$name$host${coHost}Talk$talkCategory$talkTitle';

  Widget line(double x1, double y, double x2) {
    return Positioned(
      left: x1,
      top: y,
      width: x2 - x1,
      child: const Divider(
        thickness: 2,
        height: 1,
        color: Color(0xFFA894FF),
      ),
    );
  }

  @override
  Iterable<Widget> buildRightSide(
    BuildContext context,
    BoxConstraints boxConstraints,
  ) sync* {
    yield Positioned(
      top: 0,
      right: 0,
      width: 900,
      height: 104,
      child: Center(
        child: Text(
          'SPEAKER PROFILE',
          style: GoogleFonts.sourceSans3(
            fontWeight: FontWeight.normal,
            letterSpacing: 6.26,
            fontSize: 31.3,
            color: Colors.white,
          ),
        ),
      ),
    );
    yield Positioned(
      top: 117,
      right: 56,
      width: 900 - 209 - 36,
      height: 104 + 104 + 36,
      child: FFCardMiddleSection(
        name: host.name,
        title: host.title,
        social: host.social,
      ),
    );
    yield Positioned(
      top: 117 + 244,
      right: 56,
      width: 900 - 209 - 36,
      height: 104 + 104 + 36,
      child: FFCardMiddleSection(
        name: coHost.name,
        title: coHost.title,
        social: coHost.social,
      ),
    );
    yield Positioned(
      bottom: 215,
      right: 56,
      width: 900 - 160 - 24,
      height: 59,
      child: Text(
        talkCategory,
        maxLines: 1,
        style: GoogleFonts.sourceSans3(
          fontWeight: FontWeight.w700,
          fontSize: 47.12,
          color: Colors.white.withOpacity(0.5),
        ),
      ),
    );
    yield Positioned(
      bottom: 54,
      right: 56,
      width: 900 - 160 - 24,
      height: 204 - 45,
      child: AutoSizeText(
        talkTitle,
        style: GoogleFonts.sourceSans3(
          fontWeight: FontWeight.w600,
          fontSize: 47.12,
          color: const Color(0xffFFE2D8),
        ),
      ),
    );
    yield Positioned(
      top: 74,
      left: 550,
      child: SizedBox(
        width: 320,
        height: 320,
        child: ClipOval(
          child: FittedBox(
            fit: BoxFit.cover,
            child: ColoredBox(
              color: const Color(0xff8369F6),
              child: host.image,
            ),
          ),
        ),
      ),
    );
    yield Positioned(
      top: 342,
      left: 550,
      child: SizedBox(
        width: 320,
        height: 320,
        child: ClipOval(
          child: FittedBox(
            fit: BoxFit.cover,
            child: ColoredBox(
              color: const Color(0xff8369F6),
              child: coHost.image,
            ),
          ),
        ),
      ),
    );
  }
}
