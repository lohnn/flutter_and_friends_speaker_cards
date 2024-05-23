import 'package:ff_speaker_cards/create_card_screen.dart';
import 'package:ff_speaker_cards/ff_card/ff_card.dart';
import 'package:ff_speaker_cards/pre_made_speaker_cards.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/all',
        routes: [
          GoRoute(
            path: '/',
            builder: (context, __) => const Material(child: CreateCardScreen()),
          ),
          GoRoute(
            path: '/all',
            builder: (context, state) {
              return Material(
                child: ListView.builder(
                  itemCount: PreMadeSpeakerCards.values.length,
                  itemBuilder: (context, index) {
                    final speaker = PreMadeSpeakerCards.values[index];
                    return InkWell(
                      onTap: () {
                        context.go('/${speaker.name}');
                      },
                      child: speaker.card,
                    );
                  },
                ),
              );
            },
          ),
          for (final speaker in PreMadeSpeakerCards.values)
            GoRoute(
              path: '/${speaker.name}',
              builder: (_, state) {
                return Material(
                  child: speaker.card,
                );
              },
            ),
          GoRoute(
            path: '/card',
            builder: (_, state) {
              final {
                'image': image,
                'type': type,
                'name': name,
                'title': title,
                'category': category,
                'categoryDescription': categoryDescription
              } = state.uri.queryParameters;
              return Material(
                child: Center(
                  child: FFCard(
                    image: Image.network(image),
                    type: type,
                    name: name,
                    title: title,
                    category: category,
                    categoryDescription: categoryDescription,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
