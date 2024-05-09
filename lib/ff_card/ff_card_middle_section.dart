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
        Text(
          name,
          style: const TextStyle(
            fontSize: 73.2,
            fontFamily: 'Futura',
            color: Colors.white,
          ),
        ),
        Text(
          title,
          style: GoogleFonts.sourceSans3(
            fontWeight: FontWeight.w700,
            fontSize: 41,
            color: Colors.white.withOpacity(0.5),
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
              child: Text(
                social.text,
                style: const TextStyle(
                  fontSize: 47,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffBAEBFF),
                ),
              ),
            ),
          )
        ],
      ],
    );
  }
}
