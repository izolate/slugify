import 'package:slugify/slugify.dart';

void main() {
  // Slugify with default config.
  var slug1 = Slugify('Hello, world!');
  print(slug1);

  // Set a custom delimiter.
  var slug2 = Slugify('Some prefer snake case', delimiter: '_');
  print(slug2);

  // Preserve the original case.
  var slug3 = Slugify('BREAKING NEWS', lowercase: false);
  print(slug3);

  // Normalize to latin characters.
  var slug4 = Slugify("C'est déjà l'été.");
  print(slug4);
}
