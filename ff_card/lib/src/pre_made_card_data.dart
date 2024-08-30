import 'package:ff_card/src/ff_card/ff_card.dart';
import 'package:flutter/widgets.dart';

abstract class PreMadeCardData {
  String get name;

  FFCard cardWidget({bool allowDownload = false, GlobalKey? downloadKey});
}
