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
    talk: 'Inside Jaspr: Building a Dart web framework from scratch',
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
    talk: 'Practical Design Patterns for Flutter Development',
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
  filip(
    personName: 'Filip Hráček',
    title: 'Founder of Raindead',
    photo: 'Filip Hracek.jpg',
    talk:
        'Flutter in the year 2044: Discussing a community plan for Flutter’s next 20 years',
    socialText: 'Mastodon @filiph',
    socialUrl: 'https://mastodon.social/@filiph',
  ),
  slava(
    personName: 'Vyacheslav "Slava" Egorov',
    title: 'Uber-TL of Dart',
    photo: 'Slava Egorov.jpg',
    talk: 'Learning something about Dart performance by optimizing jsonDecode',
    socialText: '@mraleph',
    socialUrl: 'https://x.com/mraleph',
  ),
  craig(
    personName: 'Craig Labenz',
    title: 'Developer Relations Engineer at Google',
    photo: 'Craig.jpeg',
    talk: 'Keynote speaker',
    socialText: '@craig_labenz',
    socialUrl: 'https://x.com/craig_labenz',
  ),
  michal(
    personName: 'Michał Gapiński',
    title: 'Founder and Software Engineer',
    photo: 'Michał Gapiński.png',
    talk:
        'Embedded Flutter on Raspberry Pi 5: Simplification of Daily E-Commerce Operations',
    socialText: '@mikegapinski',
    socialUrl: 'https://twitter.com/mikegapinski',
  ),
  simon(
    personName: 'Simon Auer',
    title: 'CEO at marqably',
    photo: 'Simon Auer.jpg',
    talk: 'Quick Wins - how to make your app more accessible',
    socialText: '@SimonEritsch',
    socialUrl: 'https://twitter.com/SimonEritsch',
  ),
  jochum(
    personName: 'Jochum van der Ploeg',
    title: 'Senior Open Source Engineer at Very Good Ventures',
    photo: 'Jochum van der Ploeg.jpeg',
    talk: 'How big are macros really?',
    socialText: '@wolfenrain',
    socialUrl: 'https://twitter.com/wolfenrain',
  ),
  alexandre(
    personName: 'Alexandre Moureaux',
    title: 'Performance Expert at BAM',
    photo: 'Alexandre Moureaux.jpeg',
    talk: 'Flutter & Threads',
    socialText: '@almouro',
    socialUrl: 'https://twitter.com/almouro',
  ),
  // TODO: This one is double (support it!)
  lucas(
    personName: 'Lucas Josefiak & Jens',
    title: 'Co-Founder & CEO of Widgetbook',
    photo: 'Lucas Josefiak.png',
    talk:
        'Simplify Design Systems and Designer/Developer Collaboration with Widgetbook',
    socialText: '@LucasJosefiak',
    socialUrl: 'https://twitter.com/LucasJosefiak',
  ),
  // TODO: This one is double (support it!)
  mateusz(
    personName: 'Mateusz Wojtczak & Julia',
    title: 'Head of Mobile at LeanCode',
    photo: 'Mateusz Wojtczak.jpg',
    talk: "Let's test it with Patrol!",
    socialText: '@matiwojt & @julia_d_borko',
    socialUrl: 'https://twitter.com/@matiwojt',
  ),
  // TODO: This one is double (support it!)
  moritz(
    personName: 'Moritz Theis & Payam Zahedi',
    title: 'CEO at Snapp X',
    photo: 'Moritz Theis.JPG', // & Payam Zahedi.png',
    talk: 'Beyond Mobile: Powering Embedded Devices with Flutter',
    socialText: '@MoritzTheis',
    socialUrl: 'https://twitter.com/MoritzTheis',
  ),
  raouf(
    personName: 'Raouf Rahiche',
    title: 'Software Engineer at EasyA',
    photo: 'Raouf Rahiche.jpeg',
    talk: 'A closer look at the blur effect in Flutter',
    socialText: '@raoufrahiche',
    socialUrl: 'https://x.com/raoufrahiche',
  ),
  cagatay(
    personName: 'Çağatay Ulusoy',
    title: 'Flutter Competence Lead at Wolt',
    photo: 'Çağatay Ulusoy.jpg',
    talk: 'Advanced Flutter Navigation: Mastering Declarative Navigation',
    socialText: '@ulusoyapps',
    socialUrl: 'https://twitter.com/ulusoyapps',
  ),
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
