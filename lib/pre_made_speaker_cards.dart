import 'package:ff_speaker_cards/ff_card/ff_card.dart';
import 'package:ff_speaker_cards/social.dart';

enum PreMadeSpeakerCards {
  renan(
    Presentation(
      host: Host(
        personName: 'Renan Araujo',
        title: 'Software Engineer',
        photo: 'Renan Araujo.jpg',
        socialText: '@reNotANumber',
        socialUrl: 'https://twitter.com/reNotANumber',
      ),
      talkTitle: 'Flutter web superfast: WASM',
    ),
  ),
  pavel(
    Presentation(
      host: Host(
        personName: 'Pavel Sulimau',
        title: 'Lead Software Engineer',
        photo: 'Pavel Sulimau.jpeg',
        socialText: 'https://pasul.dev/',
        socialUrl: 'https://pasul.dev/',
      ),
      talkTitle: 'Code Quality Gates for Large-Scale Flutter Apps',
    ),
  ),
  akanksha(
    Presentation(
      host: Host(
        personName: 'Akanksha Singh',
        title: 'Software Engineer',
        photo: 'Akanksha Singh.jpg',
        socialText: '@coder_jedi',
        socialUrl: 'https://twitter.com/coder_jedi',
      ),
      talkTitle: 'Automating Accessibility Adoption in Flutter using Gemini AI',
    ),
  ),
  darja(
    Presentation(
      host: Host(
        personName: 'Darja Orlova',
        title: 'Creator of NativePal',
        photo: 'Darja Orlova.png',
        socialText: '@dariadroid',
        socialUrl: 'https:/),/twitter.com/dariadroid',
      ),
      talkTitle:
          'Zero runtime errors: Exploring Static Code Analysis techniques in Flutter',
    ),
  ),
  kilian(
    Presentation(
      host: Host(
        personName: 'Kilian Schulte',
        title: 'Flutter Engineer',
        photo: 'Kilian Schulte.jpeg',
        socialText: '@schultek_dev',
        socialUrl: 'https://twitter.com/schultek_dev',
      ),
      talkTitle: 'Inside Jaspr: Building a Dart web framework from scratch',
    ),
  ),
  luan(
    Presentation(
      host: Host(
        personName: 'Luan Nico',
        title: 'Software Craftsman',
        photo: 'Luan Nico.jpg',
        socialText: 'https://luan.xyz/',
        socialUrl: 'https://luan.xyz/',
      ),
      talkTitle: 'Making a 3D game with Flutter and Flame',
    ),
  ),
  majid(
    Presentation(
      host: Host(
        personName: 'Majid Hajian',
        title: 'Author',
        photo: 'Majid Hajian.png',
        socialText: '@mhadaily',
        socialUrl: 'https://twitter.com/mhadaily',
      ),
      talkTitle: 'Practical Design Patterns for Flutter Development',
    ),
  ),
  roaa(
    Presentation(
      host: Host(
        personName: 'Roaa Khaddam',
        title: 'Software Engineer, Flutter GDE',
        photo: 'Roaa Khaddam.png',
        socialText: '@roaakdm',
        socialUrl: 'https://twitter.com/roaakdm',
      ),
      talkTitle: 'Using Physics for Realistic Flutter Animations',
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
      host: Host(
        personName: 'Vyacheslav "Slava" Egorov',
        title: 'Uber-TL of Dart',
        photo: 'Slava Egorov.jpg',
        socialText: '@mraleph',
        socialUrl: 'https:/),/x.com/mraleph',
      ),
      talkTitle:
          'Learning something about Dart performance by optimizing jsonDecode',
    ),
  ),
  craig(
    Presentation(
      host: Host(
        personName: 'Craig Labenz',
        title: 'Developer Relations Engineer at Google',
        photo: 'Craig.jpeg',
        socialText: '@craig_labenz',
        socialUrl: 'https://x.com/craig_labenz',
      ),
      talkTitle: 'Keynote speaker',
    ),
  ),
  michal(
    Presentation(
      host: Host(
        personName: 'Michał Gapiński',
        title: 'Founder and Software Engineer',
        photo: 'Michał Gapiński.png',
        socialText: '@mikegapinski',
        socialUrl: 'https:/),/twitter.com/mikegapinski',
      ),
      talkTitle:
          'Embedded Flutter on Raspberry Pi 5: Simplification of Daily E-Commerce Operations',
    ),
  ),
  simon(
    Presentation(
      host: Host(
        personName: 'Simon Auer',
        title: 'CEO at marqably',
        photo: 'Simon Auer.jpg',
        socialText: '@SimonEritsch',
        socialUrl: 'https://twitter.com/SimonEritsch',
      ),
      talkTitle: 'Quick Wins - how to make your app more accessible',
    ),
  ),
  jochum(
    Presentation(
      host: Host(
        personName: 'Jochum van der Ploeg',
        title: 'Senior Open Source Engineer at Very Good Ventures',
        photo: 'Jochum van der Ploeg.jpeg',
        socialText: '@wolfenrain',
        socialUrl: 'https://twitter.com/wolfenrain',
      ),
      talkTitle: 'How big are macros really?',
    ),
  ),
  alexandre(
    Presentation(
      host: Host(
        personName: 'Alexandre Moureaux',
        title: 'Performance Expert at BAM',
        photo: 'Alexandre Moureaux.jpeg',
        socialText: '@almouro',
        socialUrl: 'https://twitter.com/almouro',
      ),
      talkTitle: 'Flutter & Threads',
    ),
  ),
  // TODO: This one is double (support it!)
  jochum2(
    Workshop(
      host: Host(
        personName: 'Jochum van der Ploeg & Mike Diarmyd',
        title: 'TODO',
        photo: 'Jochum van der Ploeg.jpeg',
        //Mike Diarmid.jpg // TODO: He changed to someone else.
        socialText: '@wolfenrain && TODO',
        socialUrl: 'https://twitter.com/wolfenrain && TODO',
      ),
      talkTitle:
          'Learn how to build real-time games with Flutter and Dart Frog',
    ),
  ),
  // TODO: This one is double (support it!)
  lucas(
    Workshop(
      host: Host(
        personName: 'Lucas Josefiak & Jens',
        title: 'Co-Founder & CEO of Widgetbook',
        photo: 'Lucas Josefiak.png',
        //&Jens Horstmann.png
        socialText: '@LucasJosefiak',
        socialUrl: 'https://twitter.com/LucasJosefiak',
      ),
      talkTitle:
          'Simplify Design Systems and Designer/Developer Collaboration with Widgetbook',
    ),
  ),
  // TODO: This one is double (support it!)
  mateusz(
    Workshop(
      host: Host(
        personName: 'Mateusz Wojtczak & Julia',
        title: 'Head of Mobile at LeanCode',
        photo: 'Mateusz Wojtczak.jpg',
        // Julia Borkowska.jpg
        socialText: '@matiwojt & @julia_d_borko',
        socialUrl: 'https://twitter.com/@matiwojt',
      ),
      talkTitle: "Let's test it with Patrol!",
    ),
  ),
  // TODO: This one is double (support it!)
  moritz(
    Workshop(
      host: Host(
        personName: 'Moritz Theis & Payam Zahedi',
        title: 'CEO at Snapp X',
        photo: 'Moritz Theis.JPG',
        // & Payam Zahedi.png',
        socialText: '@MoritzTheis',
        socialUrl: 'https://twitter.com/MoritzTheis',
      ),
      talkTitle: 'Beyond Mobile: Powering Embedded Devices with Flutter',
    ),
  ),
  raouf(
    Presentation(
      host: Host(
        personName: 'Raouf Rahiche',
        title: 'Software Engineer at EasyA',
        photo: 'Raouf Rahiche.jpeg',
        socialText: '@raoufrahiche',
        socialUrl: 'https://x.com/raoufrahiche',
      ),
      talkTitle: 'A closer look at the blur effect in Flutter',
    ),
  ),
  cagatay(
    Workshop(
      host: Host(
        personName: 'Çağatay Ulusoy',
        title: 'Flutter Competence Lead at Wolt',
        photo: 'Çağatay Ulusoy.jpg',
        socialText: '@ulusoyapps',
        socialUrl: 'https://twitter.com/ulusoyapps',
      ),
      talkTitle:
          'Advanced Flutter Navigation: Mastering Declarative Navigation',
    ),
  ),
  alfredo(
    Workshop(
      host: Host(
        personName: 'Alfredo Bautista Santos',
        title: 'Flutter developer at Greenflux',
        photo: 'Alfredo Bautista Santos.png',
        socialText: '@alfredobs97',
        socialUrl: 'https://twitter.com/alfredobs97',
      ),
      talkTitle: 'Flutter + Gemini: Your AI App Development Launchpad',
    ),
  ),
  muhammed(
    Workshop(
      host: Host(
        personName: 'Muhammed Salih Güler',
        title: 'Senior Developer Advocate at AWS',
        photo: 'Muhammed Salih Güler.png',
        socialText: '@salihgueler',
        socialUrl: 'https://twitter.com/salihgueler',
      ),
      talkTitle: 'Building a Cloud-Powered Diary Application with Flutter',
    ),
  ),
  sasha(
    Workshop(
      host: Host(
        personName: 'Sasha Denisov',
        title: 'Chief Software Engineer at EPAM',
        photo: 'Sasha Denisov.jpg',
        socialText: 'https://www.linkedin.com/in/aleks-denisov/',
        socialUrl: 'https://www.linkedin.com/in/aleks-denisov/',
      ),
      talkTitle: 'Porting your mobile app to TV platforms',
    ),
  ),
  dominik(
    Presentation(
      host: Host(
        personName: 'Dominik Roszkowski',
        title: 'Tech Lead at Visible, GDE in Flutter',
        photo: 'Dominik Roszkowski.jpeg',
        socialText: '@OrestesGaolin',
        socialUrl: 'https://x.com/OrestesGaolin',
      ),
      talkTitle: 'Native Background Processing with Flutter',
    ),
  ),
  ;

  final Talk talk;

  const PreMadeSpeakerCards(this.talk);

  FFCard get card => FFCard.speaker(talk: talk);
}

final class Host {
  final String personName;
  final String title;
  final String photo;
  final String? socialText;
  final String? socialUrl;

  const Host({
    required this.personName,
    required this.title,
    required this.photo,
    required this.socialText,
    required this.socialUrl,
  });

  Social? get social => switch ((socialText, socialUrl)) {
        (final text?, final url?) => Social(
            text: text,
            url: Uri.parse(url),
          ),
        _ => null,
      };
}

sealed class Talk {
  final Host host;
  final String talkTitle;

  const Talk({
    required this.host,
    required this.talkTitle,
  });

  String get category;
}

final class Presentation extends Talk {
  const Presentation({
    required super.host,
    required super.talkTitle,
  });

  @override
  String get category => 'Talk';
}

final class Workshop extends Talk {
  const Workshop({
    required super.host,
    required super.talkTitle,
  });

  @override
  String get category => 'Workshop';
}
