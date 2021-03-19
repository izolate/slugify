import 'package:slugify3/slugify3.dart';

void main() {
  // slugify with default config.
  var slug1 = slugify('Hello, world!');
  print(slug1); // 'hello-world'

  // Set a custom delimiter.
  var slug2 = slugify('Some prefer snake case', delimiter: '_');
  print(slug2); // 'some_prefer_snake_case'

  // Preserve the original case.
  var slug3 = slugify('BREAKING NEWS! The world is ending!', lowercase: false);
  print(slug3); // 'BREAKING-NEWS-The-world-is-ending'

  // Normalize to latin characters.
  var slug4 = slugify("C'est déjà l'été.");
  print(slug4); // 'cest-deja-lete'
}
