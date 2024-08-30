import 'dart:io';
import 'dart:ui';

import 'package:ff_card/ff_card.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late final GoRouter router;

  @override
  void initState() {
    final cards = <PreMadeCardData>[
      ...PreMadeSpeakerCards.values,
      ...SponsorCards.values,
    ];

    router = GoRouter(
      initialLocation: '/all',
      routes: [
        GoRoute(
          path: '/create',
          builder: (context, __) => const Material(child: CreateCardScreen()),
        ),
        GoRoute(
          path: '/all',
          builder: (context, state) {
            final downloadKeys = cards.map((e) => GlobalKey()).toList();

            final innerCards = [
              for (final (index, card) in cards.indexed)
                card.cardWidget(downloadKey: downloadKeys[index]),
            ];
            print('We have ${cards.length} cards to display');

            return Scaffold(
              appBar: AppBar(
                title: InkWell(
                  onTap: () async {
                    final path = await FilePicker.platform.getDirectoryPath();
                    for (final card in innerCards) {
                      final boundary = card.downloadImageKey!.currentContext!
                          .findRenderObject() as RenderRepaintBoundary;

                      final image = await boundary.toImage();
                      final byteData = await image.toByteData(
                        format: ImageByteFormat.png,
                      );

                      await File('${path!}/${card.name}.png').writeAsBytes(
                        byteData!.buffer.asUint8List(),
                      );
                    }
                    print('DOWLOADED ${innerCards.length} images');
                  },
                  child: const Text('Download ALL'),
                ),
              ),
              body: Material(
                child: SingleChildScrollView(
                    child: Column(
                  children: innerCards,
                )),
                // GridView.builder(
                //   padding: const EdgeInsets.all(12),
                //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                //     maxCrossAxisExtent: FFCard.width / 1.5,
                //     childAspectRatio: FFCard.width / FFCard.height,
                //     crossAxisSpacing: 12,
                //     mainAxisSpacing: 12,
                //   ),
                //   itemCount: innerCards.length,
                //   itemBuilder: (context, index) {
                //     final card = innerCards[index];
                //     final controller = WidgetStatesController();
                //     return ValueListenableBuilder(
                //       valueListenable: controller,
                //       child: Stack(
                //         children: [
                //           Positioned.fill(child: card),
                //           Material(
                //             color: Colors.transparent,
                //             child: InkWell(
                //               statesController: controller,
                //               onTap: () => context
                //                   .push('/${Uri.encodeComponent(card.name)}'),
                //             ),
                //           ),
                //         ],
                //       ),
                //       builder: (context, states, child) {
                //         return Card(
                //           clipBehavior: Clip.antiAlias,
                //           margin: EdgeInsets.zero,
                //           elevation:
                //               states.contains(WidgetState.hovered) ? 0 : 12,
                //           child: child,
                //         );
                //       },
                //     );
                //   },
                // ),
              ),
            );
          },
        ),
        for (final card in cards)
          GoRoute(
            path: '/${Uri.encodeComponent(card.name)}',
            builder: (_, state) {
              return Scaffold(
                appBar: AppBar(),
                body: Material(
                  child: card.cardWidget(allowDownload: true),
                ),
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
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
