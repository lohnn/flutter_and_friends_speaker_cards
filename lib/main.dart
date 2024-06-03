import 'package:ff_speaker_cards/create_card_screen.dart';
import 'package:ff_speaker_cards/ff_card/ff_card.dart';
import 'package:ff_speaker_cards/pre_made_speaker_cards.dart';
import 'package:ff_speaker_cards/sponsor_cards.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final cards = [
      ...SponsorCards.values.map((e) => e.card),
      ...PreMadeSpeakerCards.values.map((e) => e.card),
    ];

    return MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/all',
        routes: [
          GoRoute(
            path: '/create',
            builder: (context, __) => const Material(child: CreateCardScreen()),
          ),
          GoRoute(
            path: '/all',
            builder: (context, state) {
              return Material(
                child: GridView.builder(
                  padding: const EdgeInsets.all(12),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: FFCard.width / 1.5,
                    childAspectRatio: FFCard.width / FFCard.height,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    final card = cards[index];
                    final controller = WidgetStatesController();
                    return ValueListenableBuilder(
                        valueListenable: controller,
                        child: Stack(
                          children: [
                            Positioned.fill(child: card),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                statesController: controller,
                                onTap: () => context.go('/${card.name}'),
                              ),
                            ),
                          ],
                        ),
                        builder: (context, states, child) {
                          return Card(
                            clipBehavior: Clip.antiAlias,
                            margin: EdgeInsets.zero,
                            elevation:
                                states.contains(WidgetState.hovered) ? 0 : 12,
                            child: child,
                          );
                        });
                  },
                ),
              );
            },
          ),
          for (final card in cards)
            GoRoute(
              path: '/${Uri.encodeComponent(card.name)}',
              builder: (_, state) {
                return Material(
                  child: card,
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
                  child: FFCard.attendee(
                    photo: image,
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
