import 'package:ff_speaker_cards/social.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class FFCardMiddleSection extends StatelessWidget {
  final String name;
  final String title;
  final Social? social;

  const FFCardMiddleSection({
    required this.name,
    required this.title,
    this.social,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FittedBox(
          child: Text(
            name,
            maxLines: 1,
            style: const TextStyle(
              fontSize: 73.2,
              fontFamily: 'Futura',
              color: Colors.white,
            ),
          ),
        ),
        FittedBox(
          child: Text(
            title,
            maxLines: 1,
            style: GoogleFonts.sourceSans3(
              fontWeight: FontWeight.w300,
              fontSize: 41,
              fontStyle: FontStyle.italic,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ),
        if (social case final social?) ...[
          const SizedBox(height: 8),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                launchUrl(social.url);
              },
              child: FittedBox(
                child: Text(
                  social.text,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 47,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    color: Color(0xffBAEBFF),
                  ),
                ),
              ),
            ),
          )
        ],
      ],
    );
  }
}
