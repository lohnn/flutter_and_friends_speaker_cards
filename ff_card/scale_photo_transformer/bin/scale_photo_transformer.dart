import 'dart:io';

import 'package:args/args.dart';
import 'package:image/image.dart';

const inputOptionName = 'input';
const outputOptionName = 'output';

int main(List<String> arguments) {
  // The flutter tool will invoke this program with two arguments, one for
  // the `--input` option and one for the `--output` option.
  // `--input` is the original asset file that this program should transform.
  // `--output` is where flutter expects the transformation output to be written to.
  final parser = ArgParser()
    ..addOption(inputOptionName, mandatory: true, abbr: 'i')
    ..addOption(outputOptionName, mandatory: true, abbr: 'o');

  ArgResults argResults = parser.parse(arguments);
  final String inputFilePath = argResults[inputOptionName];
  final String outputFilePath = argResults[outputOptionName];

  final inputBytes = File(inputFilePath).readAsBytesSync();
  final outputFile = File(outputFilePath);
  try {
    final image = decodeImage(inputBytes)!;
    final resized = copyResizeCropSquare(
      image,
      size: 512,
      antialias: true,
      interpolation: Interpolation.cubic,
    );

    outputFile.writeAsBytesSync(encodeJpg(resized));

    return 0;
  } catch (e, stackTrace) {
    // The flutter command line tool will see a non-zero exit code (1 in this case)
    // and fail the build. Anything written to stderr by the asset transformer
    // will be surfaced by flutter.
    stderr.writeln(
      'Unexpected exception when producing grayscale image.\n'
      'Details: $e',
    );
    stderr.writeln(stackTrace.toString());

    // Ignore and pass it on!
    outputFile.writeAsBytesSync(inputBytes);

    return 0;
  }
}
