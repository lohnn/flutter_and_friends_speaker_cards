import 'package:ff_speaker_cards/ff_card/ff_card.dart';
import 'package:ff_speaker_cards/social.dart';

enum PreMadeSpeakerCards {
  renan(
    Presentation(
      personName: 'Renan Araujo',
      title: 'Software Engineer',
      photo: 'Renan Araujo.jpg',
      talkTitle: 'Flutter web superfast: WASM',
      socialText: '@reNotANumber',
      socialUrl: 'https://twitter.com/reNotANumber',
    ),
  ),
  pavel(
    Presentation(
      personName: 'Pavel Sulimau',
      title: 'Lead Software Engineer',
      photo: 'Pavel Sulimau.jpeg',
      talkTitle: 'Code Quality Gates for Large-Scale Flutter Apps',
      socialText: 'https://pasul.dev/',
      socialUrl: 'https://pasul.dev/',
    ),
  ),
  akanksha(
    Presentation(
      personName: 'Akanksha Singh',
      title: 'Software Engineer',
      photo: 'Akanksha Singh.jpg',
      talkTitle: 'Automating Accessibility Adoption in Flutter using Gemini AI',
      socialText: '@coder_jedi',
      socialUrl: 'https://twitter.com/coder_jedi',
    ),
  ),
  darja(
    Presentation(
      personName: 'Darja Orlova',
      title: 'Creator of NativePal',
      photo: 'Darja Orlova.png',
      talkTitle:
          'Zero runtime errors: Exploring Static Code Analysis techniques in Flutter',
      socialText: '@dariadroid',
      socialUrl: 'https://twitter.com/dariadroid',
    ),
  ),
  kilian(
    Presentation(
      personName: 'Kilian Schulte',
      title: 'Flutter Engineer',
      photo: 'Kilian Schulte.jpeg',
      talkTitle: 'Inside Jaspr: Building a Dart web framework from scratch',
      socialText: '@schultek_dev',
      socialUrl: 'https://twitter.com/schultek_dev',
    ),
  ),
  luan(
    Presentation(
      personName: 'Luan Nico',
      title: 'Software Craftsman',
      photo: 'Luan Nico.jpg',
      talkTitle: 'Making a 3D game with Flutter and Flame',
      socialText: 'https://luan.xyz/',
      socialUrl: 'https://luan.xyz/',
    ),
  ),
  majid(
    Presentation(
      personName: 'Majid Hajian',
      title: 'Author',
      photo: 'Majid Hajian.png',
      talkTitle: 'Practical Design Patterns for Flutter Development',
      socialText: '@mhadaily',
      socialUrl: 'https://twitter.com/mhadaily',
    ),
  ),
  roaa(
    Presentation(
      personName: 'Roaa Khaddam',
      title: 'Software Engineer, Flutter GDE',
      photo: 'Roaa Khaddam.png',
      talkTitle: 'Using Physics for Realistic Flutter Animations',
      socialText: '@roaakdm',
      socialUrl: 'https://twitter.com/roaakdm',
    ),
  ),
  // communityPlan(
  //   Workshop(
  //     personName: 'TBA',
  //     title: '',
  //     photo: '',
  //     talkTitle:
  //         'Flutter in the year 2044: Discussing a community plan for Flutter’s next 20 years',
  //     socialText: '',
  //     socialUrl: '',
  //   ),
  // ),
  slava(
    Presentation(
      personName: 'Vyacheslav "Slava" Egorov',
      title: 'Uber-TL of Dart',
      photo: 'Slava Egorov.jpg',
      talkTitle:
          'Learning something about Dart performance by optimizing jsonDecode',
      socialText: '@mraleph',
      socialUrl: 'https://x.com/mraleph',
    ),
  ),
  craig(
    Presentation(
      personName: 'Craig Labenz',
      title: 'Developer Relations Engineer at Google',
      photo: 'Craig.jpeg',
      talkTitle: 'Keynote speaker',
      socialText: '@craig_labenz',
      socialUrl: 'https://x.com/craig_labenz',
    ),
  ),
  michal(
    Presentation(
      personName: 'Michał Gapiński',
      title: 'Founder and Software Engineer',
      photo: 'Michał Gapiński.png',
      talkTitle:
          'Embedded Flutter on Raspberry Pi 5: Simplification of Daily E-Commerce Operations',
      socialText: '@mikegapinski',
      socialUrl: 'https://twitter.com/mikegapinski',
    ),
  ),
  simon(
    Presentation(
      personName: 'Simon Auer',
      title: 'CEO at marqably',
      photo: 'Simon Auer.jpg',
      talkTitle: 'Quick Wins - how to make your app more accessible',
      socialText: '@SimonEritsch',
      socialUrl: 'https://twitter.com/SimonEritsch',
    ),
  ),
  jochum(
    Presentation(
      personName: 'Jochum van der Ploeg',
      title: 'Senior Open Source Engineer at Very Good Ventures',
      photo: 'Jochum van der Ploeg.jpeg',
      talkTitle: 'How big are macros really?',
      socialText: '@wolfenrain',
      socialUrl: 'https://twitter.com/wolfenrain',
    ),
  ),
  alexandre(
    Presentation(
      personName: 'Alexandre Moureaux',
      title: 'Performance Expert at BAM',
      photo: 'Alexandre Moureaux.jpeg',
      talkTitle: 'Flutter & Threads',
      socialText: '@almouro',
      socialUrl: 'https://twitter.com/almouro',
    ),
  ),
  // TODO: This one is double (support it!)
  jochum2(
    Workshop(
      personName: 'Jochum van der Ploeg & Mike Diarmyd',
      title: 'TODO',
      photo: 'Jochum van der Ploeg.jpeg',
      //Mike Diarmid.jpg // TODO: He changed to someone else.
      talkTitle:
          'Learn how to build real-time games with Flutter and Dart Frog',
      socialText: '@wolfenrain && TODO',
      socialUrl: 'https://twitter.com/wolfenrain && TODO',
    ),
  ),
  // TODO: This one is double (support it!)
  lucas(
    Workshop(
      personName: 'Lucas Josefiak & Jens',
      title: 'Co-Founder & CEO of Widgetbook',
      photo: 'Lucas Josefiak.png',
      //&Jens Horstmann.png
      talkTitle:
          'Simplify Design Systems and Designer/Developer Collaboration with Widgetbook',
      socialText: '@LucasJosefiak',
      socialUrl: 'https://twitter.com/LucasJosefiak',
    ),
  ),
  // TODO: This one is double (support it!)
  mateusz(
    Workshop(
      personName: 'Mateusz Wojtczak & Julia',
      title: 'Head of Mobile at LeanCode',
      photo: 'Mateusz Wojtczak.jpg',
      // Julia Borkowska.jpg
      talkTitle: "Let's test it with Patrol!",
      socialText: '@matiwojt & @julia_d_borko',
      socialUrl: 'https://twitter.com/@matiwojt',
    ),
  ),
  // TODO: This one is double (support it!)
  moritz(
    Workshop(
      personName: 'Moritz Theis & Payam Zahedi',
      title: 'CEO at Snapp X',
      photo: 'Moritz Theis.JPG',
      // & Payam Zahedi.png',
      talkTitle: 'Beyond Mobile: Powering Embedded Devices with Flutter',
      socialText: '@MoritzTheis',
      socialUrl: 'https://twitter.com/MoritzTheis',
    ),
  ),
  raouf(
    Presentation(
      personName: 'Raouf Rahiche',
      title: 'Software Engineer at EasyA',
      photo: 'Raouf Rahiche.jpeg',
      talkTitle: 'A closer look at the blur effect in Flutter',
      socialText: '@raoufrahiche',
      socialUrl: 'https://x.com/raoufrahiche',
    ),
  ),
  cagatay(
    Workshop(
      personName: 'Çağatay Ulusoy',
      title: 'Flutter Competence Lead at Wolt',
      photo: 'Çağatay Ulusoy.jpg',
      talkTitle:
          'Advanced Flutter Navigation: Mastering Declarative Navigation',
      socialText: '@ulusoyapps',
      socialUrl: 'https://twitter.com/ulusoyapps',
    ),
  ),
  alfredo(
    Workshop(
      personName: 'Alfredo Bautista Santos',
      title: 'Flutter developer at Greenflux',
      photo: 'Alfredo Bautista Santos.png',
      talkTitle: 'Flutter + Gemini: Your AI App Development Launchpad',
      socialText: '@alfredobs97',
      socialUrl: 'https://twitter.com/alfredobs97',
    ),
  ),
  muhammed(
    Workshop(
      personName: 'Muhammed Salih Güler',
      title: 'Senior Developer Advocate at AWS',
      photo: 'Muhammed Salih Güler.png',
      talkTitle: 'Building a Cloud-Powered Diary Application with Flutter',
      socialText: '@salihgueler',
      socialUrl: 'https://twitter.com/salihgueler',
    ),
  ),
  sasha(
    Workshop(
      personName: 'Sasha Denisov',
      title: 'Chief Software Engineer at EPAM',
      photo: 'Sasha Denisov.jpg',
      talkTitle: 'Porting your mobile app to TV platforms',
      socialText: 'https://www.linkedin.com/in/aleks-denisov/',
      socialUrl: 'https://www.linkedin.com/in/aleks-denisov/',
    ),
  ),
  dominik(
    Presentation(
      personName: 'Dominik Roszkowski',
      title: 'Tech Lead at Visible, GDE in Flutter',
      photo: 'Dominik Roszkowski.jpeg',
      talkTitle: 'Native Background Processing with Flutter',
      socialText: '@OrestesGaolin',
      socialUrl: 'https://x.com/OrestesGaolin',
    ),
  ),
  ;

  final Talk talk;

  const PreMadeSpeakerCards(this.talk);

  FFCard get card => FFCard.speaker(talk: talk);
}

sealed class Talk {
  final String personName;
  final String title;
  final String photo;
  final String talkTitle;
  final String? socialText;
  final String? socialUrl;

  const Talk({
    required this.personName,
    required this.title,
    required this.photo,
    required this.talkTitle,
    required this.socialText,
    required this.socialUrl,
  });

  String get category;

  Social? get social => switch ((socialText, socialUrl)) {
        (final text?, final url?) => Social(
            text: text,
            url: Uri.parse(url),
          ),
        _ => null,
      };
}

final class Presentation extends Talk {
  const Presentation({
    required super.personName,
    required super.title,
    required super.photo,
    required super.talkTitle,
    required super.socialText,
    required super.socialUrl,
  });

  @override
  String get category => 'Talk';
}

final class Workshop extends Talk {
  const Workshop({
    required super.personName,
    required super.title,
    required super.photo,
    required super.talkTitle,
    required super.socialText,
    required super.socialUrl,
  });

  @override
  String get category => 'Workshop';
}
