import 'package:ff_speaker_cards/ff_card/ff_card.dart';
import 'package:ff_speaker_cards/social.dart';

enum PreMadeSpeakerCards {
  renan(
    personName: 'Renan Araujo',
    title: 'Software Engineer',
    photo: 'Renan Araujo.jpg',
    talk: 'Flutter web superfast: WASM',
    socialText: '@reNotANumber',
    socialUrl: 'https://twitter.com/reNotANumber',
  ),
  pavel(
    personName: 'Pavel Sulimau',
    title: 'Lead Software Engineer',
    photo: 'Pavel Sulimau.jpeg',
    talk: 'Code Quality Gates for Large-Scale Flutter Apps',
    socialText: 'https://pasul.dev/',
    socialUrl: 'https://pasul.dev/',
  ),
  akanksha(
    personName: 'Akanksha Singh',
    title: 'Software Engineer',
    photo: 'Akanksha Singh.jpg',
    talk: 'Automating Accessibility Adoption in Flutter using Gemini AI',
    socialText: '@coder_jedi',
    socialUrl: 'https://twitter.com/coder_jedi',
  ),
  darja(
    personName: 'Darja Orlova',
    title: 'Creator of NativePal',
    photo: 'Darja Orlova.png',
    talk:
        'Zero runtime errors: Exploring Static Code Analysis techniques in Flutter',
    socialText: '@dariadroid',
    socialUrl: 'https://twitter.com/dariadroid',
  ),
  kilian(
    personName: 'Kilian Schulte',
    title: 'Flutter Engineer',
    photo: 'Kilian Schulte.jpeg',
    talk: 'Jaspr: Unleashing the Power of Dart for Modern Web Development',
    socialText: '@schultek_dev',
    socialUrl: 'https://twitter.com/schultek_dev',
  ),
  luan(
    personName: 'Luan Nico',
    title: 'Software Craftsman',
    photo: 'Luan Nico.jpg',
    talk: 'Making a 3D game with Flutter and Flame',
    socialText: 'https://luan.xyz/',
    socialUrl: 'https://luan.xyz/',
  ),
  majid(
    personName: 'Majid Hajian',
    title: 'Author',
    photo: 'Majid Hajian.png',
    talk: '[Tenative] Practical Design Patterns for Flutter Development',
    socialText: '@mhadaily',
    socialUrl: 'https://twitter.com/mhadaily',
  ),
  roaa(
    personName: 'Roaa Khaddam',
    title: 'Software Engineer, Flutter GDE',
    photo: 'Roaa Khaddam.png',
    talk: 'Using Physics for Realistic Flutter Animations',
    socialText: '@roaakdm',
    socialUrl: 'https://twitter.com/roaakdm',
  ),
  // slava(
  //   name: ,
  //   title: ,
  //   photo: 'Slava Egorov.jpg',
  //   talk: ,
  //   socialText: ,
  //   socialUrl: ,
  // ),
  ;

  final String personName;
  final String title;
  final String photo;
  final String talk;
  final String? socialText;
  final String? socialUrl;

  const PreMadeSpeakerCards({
    required this.personName,
    required this.title,
    required this.photo,
    required this.talk,
    required this.socialText,
    required this.socialUrl,
  });

  FFCard get card {
    final social = switch ((socialText, socialUrl)) {
      (final text?, final url?) => Social(
          text: text,
          url: Uri.parse(url),
        ),
      _ => null,
    };
    return FFCard.speaker(
      name: personName,
      title: title,
      photo: photo,
      talk: talk,
      social: social,
    );
  }
}
