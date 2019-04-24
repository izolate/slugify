import 'package:slugify/src/replacements.dart';

final _dupeSpaceRegExp = RegExp(r'\s{2,}');
final _punctuationRegExp = RegExp(r'[^\w\s-]');

/// Converts [text] to a slugified [String] separated by the [delimiter].
Slugify(String text, {String delimiter = '-', bool lowercase = true}) {
  // Trim leading and trailing whitespace.
  String slug = text.trim();

  // Make the text lowercase (optional).
  if (lowercase) {
    slug = slug.toLowerCase();
  }

  // Substitute characters for their latin equivalent.
  replacements.forEach((k, v) => slug = slug.replaceAll(k, v));

  slug = slug
      // Condense whitespaces to 1 space.
      .replaceAll(_dupeSpaceRegExp, ' ')
      // Remove punctuation.
      .replaceAll(_punctuationRegExp, '')
      // Replace space with the delimiter.
      .replaceAll(' ', delimiter);

  return slug;
}
