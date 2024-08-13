import 'package:ff_speaker_cards/ff_card/ff_card.dart';
import 'package:ff_speaker_cards/social.dart';
import 'package:flutter/widgets.dart';

enum PreMadeSpeakerCards {
  renan(
    Presentation(
      host: Host(
        name: 'Renan Araujo',
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
        name: 'Pavel Sulimau',
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
        name: 'Akanksha Singh',
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
        name: 'Darja Orlova',
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
        name: 'Kilian Schulte',
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
        name: 'Luan Nico',
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
        name: 'Majid Hajian',
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
        name: 'Roaa Khaddam',
        title: 'Software Engineer, Flutter GDE',
        photo: 'Roaa Khaddam.png',
        socialText: '@roaakdm',
        socialUrl: 'https://twitter.com/roaakdm',
      ),
      talkTitle: 'Code Meets Art: Flutter for Creative Coding',
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
        name: 'Vyacheslav "Slava" Egorov',
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
        name: 'Craig Labenz',
        title: 'Developer Relations Engineer at Google',
        photo: 'Craig.jpeg',
        socialText: '@craig_labenz',
        socialUrl: 'https://x.com/craig_labenz',
      ),
      talkTitle: 'Keynote - Empathetic Flutter',
    ),
  ),
  michal(
    Presentation(
      host: Host(
        name: 'Michał Gapiński',
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
        name: 'Simon Auer',
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
        name: 'Jochum van der Ploeg',
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
        name: 'Alexandre Moureaux',
        title: 'Performance Expert at BAM',
        photo: 'Alexandre Moureaux.jpeg',
        socialText: '@almouro',
        socialUrl: 'https://twitter.com/almouro',
      ),
      talkTitle: 'Flutter & Threads',
    ),
  ),
  raouf(
    Presentation(
      host: Host(
        name: 'Raouf Rahiche',
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
        name: 'Çağatay Ulusoy',
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
        name: 'Alfredo Bautista Santos',
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
        name: 'Muhammed Salih Güler',
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
        name: 'Sasha Denisov',
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
        name: 'Dominik Roszkowski',
        title: 'Tech Lead at Visible, GDE in Flutter',
        photo: 'Dominik Roszkowski.jpeg',
        socialText: '@OrestesGaolin',
        socialUrl: 'https://x.com/OrestesGaolin',
      ),
      talkTitle: 'Native Background Processing with Flutter',
    ),
  ),
  jochum2(
    Workshop(
      host: Host(
        name: 'Jochum van der Ploeg',
        title: 'Senior Open Source Engineer at Very Good Ventures',
        photo: 'Jochum van der Ploeg.jpeg',
        socialText: '@wolfenrain',
        socialUrl: 'https://twitter.com/wolfenrain',
      ),
      coHost: Host(
        name: 'Mike Diarmid',
        title: 'CTO & Co-Founder @ Invertase',
        photo: 'Mike Diarmid.jpg',
        socialText: '@mikediarmid',
        socialUrl: 'https://twitter.com/mikediarmid',
      ),
      talkTitle:
          'Learn how to build real-time games with Flutter and Dart Frog',
    ),
  ),
  lucas(
    Workshop(
      host: Host(
        name: 'Lucas Josefiak & Jens',
        title: 'Co-Founder & CEO of Widgetbook',
        photo: 'Lucas Josefiak.png',
        socialText: '@LucasJosefiak',
        socialUrl: 'https://twitter.com/LucasJosefiak',
      ),
      coHost: Host(
        name: 'Jens Horstmann',
        title: 'Co-Founder & CTO of Widgetbook',
        photo: 'Jens Horstmann.png',
        socialText: '@jens_hor',
        socialUrl: 'https://twitter.com/jens_hor',
      ),
      talkTitle:
          'Simplify Design Systems and Designer/Developer Collaboration with Widgetbook',
    ),
  ),
  mateusz(
    Workshop(
      host: Host(
        name: 'Mateusz Wojtczak',
        title: 'Head of Mobile at LeanCode',
        photo: 'Mateusz Wojtczak.jpg',
        socialText: '@matiwojt',
        socialUrl: 'https://twitter.com/@matiwojt',
      ),
      coHost: Host(
        name: 'Julia Borkowska',
        title: 'Head of QA at LeanCode',
        photo: 'Julia Borkowska.jpg',
        socialText: '@julia_d_borko',
        socialUrl: 'https://twitter.com/julia_d_borko',
      ),
      talkTitle: "Let's test it with Patrol!",
    ),
  ),
  moritz(
    Workshop(
      host: Host(
        name: 'Moritz Theis & Payam Zahedi',
        title: 'CEO at Snapp X',
        photo: 'Moritz Theis.JPG',
        socialText: '@MoritzTheis',
        socialUrl: 'https://twitter.com/MoritzTheis',
      ),
      coHost: Host(
        name: 'Payam Zahedi',
        title: 'Senior Software Engineer at Snapp X',
        photo: 'Payam Zahedi.png',
        socialText: '@payamzahedi95',
        socialUrl: 'https://twitter.com/payamzahedi95',
      ),
      talkTitle: 'Beyond Mobile: Powering Embedded Devices with Flutter',
    ),
  ),
  ;

  final Talk talk;

  const PreMadeSpeakerCards(this.talk);

  FFCard get card => FFCard.speaker(talk: talk);
}

final class Host {
  final String name;
  final String title;
  final String photo;
  final String? socialText;
  final String? socialUrl;

  const Host({
    required this.name,
    required this.title,
    required this.photo,
    required this.socialText,
    required this.socialUrl,
  });

  @override
  String toString() {
    return 'Host{name: $name, title: $title, photo: $photo, socialText: $socialText, socialUrl: $socialUrl}';
  }

  Image get image => Image.asset('assets/photos/$photo');

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
  final Host? coHost;
  final String talkTitle;

  const Talk({
    required this.host,
    required this.coHost,
    required this.talkTitle,
  });

  String get category;

  @override
  String toString() {
    return 'Talk{host: $host, coHost: $coHost, talkTitle: $talkTitle}';
  }
}

final class Presentation extends Talk {
  const Presentation({
    required super.host,
    super.coHost,
    required super.talkTitle,
  });

  @override
  String get category => 'Talk';
}

final class Workshop extends Talk {
  const Workshop({
    required super.host,
    super.coHost,
    required super.talkTitle,
  });

  @override
  String get category => 'Workshop';
}
