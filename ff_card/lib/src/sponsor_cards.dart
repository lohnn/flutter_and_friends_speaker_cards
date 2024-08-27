import 'package:ff_card/ff_card.dart';

enum SponsorCards implements PreMadeCardData {
  flutter(
    name: 'Flutter',
    logo: 'flutter.png',
    url: 'https://flutter.dev/',
    sponsorLevel: SponsorLevel.gold,
  ),
  hackberry(
    name: 'Hackberry',
    logo: 'hackberry.png',
    url: 'https://www.hackberry.se/',
    sponsorLevel: SponsorLevel.platinum,
  ),
  codemagic(
    name: 'CodeMagic',
    logo: 'svg/codemagic.svg',
    url: 'https://codemagic.io/',
    sponsorLevel: SponsorLevel.gold,
  ),
  invertase(
    name: 'Invertase',
    logo: 'invertase.png',
    url: 'https://invertase.io/',
    sponsorLevel: SponsorLevel.gold,
  ),
  skandia(
    name: 'Skandia',
    logo: 'svg/skandia.svg',
    url: 'https://www.skandia.se/',
    sponsorLevel: SponsorLevel.silver,
  ),
  leanCode(
    name: 'LeanCode',
    logo: 'leancode.png',
    url: 'https://leancode.co/',
    sponsorLevel: SponsorLevel.gold,
  ),
  rebelAppStudio(
    name: 'Rebel App Studio',
    logo: 'rebelappstudio.png',
    url: 'https://rebelappstudio.com/',
    sponsorLevel: SponsorLevel.streaming,
  ),
  blueFire(
    name: 'Blue Fire',
    logo: 'bluefire.png',
    url: 'https://opencollective.com/blue-fire',
    sponsorLevel: SponsorLevel.togetherWith,
  ),
  done(
    name: 'Done',
    logo: 'done.png',
    url: 'https://doneservices.se',
    sponsorLevel: SponsorLevel.togetherWith,
  ),
  appshack(
    name: 'Appshack',
    logo: 'svg/appshack.svg',
    url: 'https://appshack.se/',
    sponsorLevel: SponsorLevel.platinum,
  ),
  dcm(
    name: 'DCM',
    logo: 'svg/dcm.svg',
    url: 'https://dcm.dev/',
    sponsorLevel: SponsorLevel.silver,
  ),
  aws(
    name: 'AWS Amplify',
    logo: 'amplify.png',
    url: 'https://aws.amazon.com/amplify/',
    sponsorLevel: SponsorLevel.gold,
  ),
  matpriskollen(
    name: 'Matpriskollen',
    logo: 'matpriskollen.png',
    url: 'https://matpriskollen.se/',
    sponsorLevel: SponsorLevel.silver,
  ),
  ;

  @override
  final String name;
  final String logo;
  final String url;
  final SponsorLevel sponsorLevel;

  const SponsorCards({
    required this.name,
    required this.logo,
    required this.url,
    required this.sponsorLevel,
  });

  @override
  FFCard cardWidget({bool allowDownload = false}) {
    return FFCard.sponsor(
      sponsorLevel: sponsorLevel,
      name: name,
      logo: logo,
      url: url,
      allowDownload: allowDownload,
    );
  }
}

enum SponsorLevel {
  platinum('Platinum sponsor'),
  gold('Gold sponsor'),
  silver('Silver sponsor'),
  streaming('Streaming sponsor'),
  togetherWith('Together with'),
  ;

  final String levelText;

  const SponsorLevel(this.levelText);
}
