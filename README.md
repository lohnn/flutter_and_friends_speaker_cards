# ff_speaker_cards

A new Flutter project.

Make sure you have the right project selected before deploying:
``` Bash
firebase use flutter-and-friends-ad8fe
```

To deploy, run:
``` Bash
flutter build web --release --wasm
firebase deploy --only hosting
```

To deploy legacy web (to circumvent shadow render issue), run:
``` Bash
flutter build web --release --web-renderer canvaskit
firebase deploy --only hosting
```
