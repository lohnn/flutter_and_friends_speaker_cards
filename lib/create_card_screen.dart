import 'package:ff_speaker_cards/extensions/string_extensions.dart';
import 'package:ff_speaker_cards/ff_card/ff_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateCardScreen extends StatefulWidget {
  const CreateCardScreen({super.key});

  @override
  State<CreateCardScreen> createState() => _CreateCardPageState();
}

class _CreateCardPageState extends State<CreateCardScreen> {
  late final TextEditingController imageText;
  late final TextEditingController typeText;
  late final TextEditingController nameText;
  late final TextEditingController titleText;
  late final TextEditingController categoryText;
  late final TextEditingController categoryDescriptionText;

  @override
  void initState() {
    imageText = TextEditingController();
    typeText = TextEditingController();
    nameText = TextEditingController();
    titleText = TextEditingController();
    categoryText = TextEditingController();
    categoryDescriptionText = TextEditingController();

    imageText.addListener(() => setState(() {}));
    typeText.addListener(() => setState(() {}));
    nameText.addListener(() => setState(() {}));
    titleText.addListener(() => setState(() {}));
    categoryText.addListener(() => setState(() {}));
    categoryDescriptionText.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    imageText.dispose();
    typeText.dispose();
    nameText.dispose();
    titleText.dispose();
    categoryText.dispose();
    categoryDescriptionText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: FFCard(
            image: Image.network(imageText.text),
            type: typeText.text.nullIfEmpty ?? 'TYPE',
            name: nameText.text.nullIfEmpty ?? 'Your Name',
            title: titleText.text.nullIfEmpty ?? 'Your Title',
            category: categoryText.text.nullIfEmpty ?? 'Category',
            categoryDescription: categoryDescriptionText.text.nullIfEmpty ??
                'Category description',
          ),
        ),
        const SizedBox(width: 16),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: TextField(
                controller: imageText,
                decoration: const InputDecoration(hintText: 'Image URL'),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: TextField(
                controller: typeText,
                decoration: const InputDecoration(hintText: 'Type'),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: TextField(
                controller: nameText,
                decoration: const InputDecoration(hintText: 'Name'),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: TextField(
                controller: titleText,
                decoration: const InputDecoration(hintText: 'Title'),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: TextField(
                controller: categoryText,
                decoration: const InputDecoration(hintText: 'Category'),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: TextField(
                controller: categoryDescriptionText,
                decoration: const InputDecoration(
                  hintText: 'Category description',
                ),
              ),
            ),
            const SizedBox(height: 12),
            MaterialButton(
              onPressed: () {
                final image = imageText.text;
                final type = typeText.text;
                final name = nameText.text;
                final title = titleText.text;
                final category = categoryText.text;
                final categoryDescription = categoryDescriptionText.text;

                // TODO: Alert user if text field is empty
                if (image.isEmpty ||
                    type.isEmpty ||
                    name.isEmpty ||
                    title.isEmpty ||
                    category.isEmpty ||
                    categoryDescription.isEmpty) {
                  return;
                }

                context.go(
                  Uri(path: '/card', queryParameters: {
                    'image': image,
                    'type': type,
                    'name': name,
                    'title': title,
                    'category': category,
                    'categoryDescription': categoryDescription,
                  }).toString(),
                );
              },
              child: const Text('YOLO create'),
            ),
          ],
        ),
      ],
    );
  }
}
