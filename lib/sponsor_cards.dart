import 'package:ff_speaker_cards/ff_card/ff_card.dart';

enum SponsorCards {
  flutter(
    name: 'Flutter',
    logo: 'flutter.png',
    url: 'https://flutter.dev/',
  ),
  hackberry(
    name: 'Hackberry',
    logo: 'hackberry.png',
    url: 'https://www.hackberry.se/',
  ),
  codemagic(
    name: 'CodeMagic',
    logo: 'svg/codemagic.svg',
    url: 'https://codemagic.io/',
  ),
  invertase(
    name: 'Invertase',
    logo: 'invertase.png',
    url: 'https://invertase.io/',
  ),
  skandia(
    name: 'Skandia',
    logo: 'svg/skandia.svg',
    url: 'https://www.skandia.se/',
  ),
  leanCode(
    name: 'LeanCode',
    logo: 'leancode.png',
    url: 'https://leancode.co/',
  ),
  rebelAppStudio(
    name: 'Rebel App Studio',
    logo: 'rebelappstudio.png',
    url: 'https://rebelappstudio.com/',
  ),
  blueFire(
    name: 'Blue Fire',
    logo: 'bluefire.png',
    url: 'https://opencollective.com/blue-fire',
  ),
  done(
    name: 'Done',
    logo: 'done.png',
    url: 'https://doneservices.se',
  ),
  appshack(
    name: 'Appshack',
    logo: 'svg/appshack.svg',
    url: 'https://appshack.se/',
  ),
  dcm(
    name: 'DCM',
    logo: 'svg/dcm.svg',
    url: 'https://dcm.dev/',
  ),
  ;

  final String name;
  final String logo;
  final String url;

  const SponsorCards({
    required this.name,
    required this.logo,
    required this.url,
  });

  FFCard get card {
    return FFCard.sponsor(
      name: name,
      logo: logo,
      url: url,
    );
  }
}
