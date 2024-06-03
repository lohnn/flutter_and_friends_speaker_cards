import 'package:ff_speaker_cards/ff_card/ff_card.dart';

enum SponsorCards {
  flutter(
    name: 'Flutter',
    logo: 'flutter.png',
    url: 'https://flutter.dev/',
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
