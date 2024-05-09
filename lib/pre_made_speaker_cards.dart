import 'package:ff_speaker_cards/ff_card/ff_card.dart';
import 'package:ff_speaker_cards/social.dart';

class PreMadeSpeakerCards {
  const PreMadeSpeakerCards._();

  static final renan = FFCard.speaker(
    name: 'Renan Araujo',
    title: 'Software Engineer',
    photo: 'Renan Araujo.jpg',
    talk: 'Flutter web superfast: WASM',
    social: Social(
      text: '@reNotANumber',
      url: Uri.parse('https://twitter.com/reNotANumber'),
    ),
  );

  static final pavel = FFCard.speaker(
    name: 'Pavel Sulimau',
    title: 'Lead Software Engineer',
    photo: 'Pavel Sulimau.jpeg',
    talk: 'Code Quality Gates for Large-Scale Flutter Apps',
    social: Social(
      text: 'https://pasul.dev/',
      url: Uri.parse('https://pasul.dev/'),
    ),
  );

  static final akanksha = FFCard.speaker(
    name: 'Akanksha Singh',
    title: 'Software Engineer',
    photo: 'Akanksha Singh.jpg',
    talk: 'Automating Accessibility Audit in Flutter with Gemini AI',
    social: Social(
      text: '@coder_jedi',
      url: Uri.parse('https://twitter.com/coder_jedi'),
    ),
  );
}
