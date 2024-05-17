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
        routes: [
          GoRoute(
            path: '/',
            builder: (context, __) => const Material(child: CreateCardScreen()),
          ),
          GoRoute(
            path: '/all',
            builder: (_, state) {
              return Material(
                child: ListView(
                  children: PreMadeSpeakerCards.values
                      .map((e) => e.card)
                      .toList(),
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
