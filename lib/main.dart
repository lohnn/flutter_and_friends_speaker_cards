import 'package:ff_speaker_cards/create_card_screen.dart';
import 'package:ff_speaker_cards/speaker_card.dart';
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
                  child: SpeakerCard(
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
