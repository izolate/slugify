import 'package:slugify/src/replacements.dart';

const multipleWhitespacePattern = r'\s{2,}';
const punctuationPattern = r'[^\w\s-]';

Slugify(String text, {String delimiter = '-', bool lowercase = true}) {
  // Trim leading and trailing whitespace
  String slug = text.trim();

  // Make the text lowercase (optional)
  if (lowercase) {
    slug = slug.toLowerCase();
  }

  // Substitute characters for their latin equivalent
  replacements.forEach((k, v) => slug = slug.replaceAll(k, v));

  slug = slug
      // Condense whitespaces to 1 space
      .replaceAll(RegExp(multipleWhitespacePattern), ' ')
      // Remove punctuation
      .replaceAll(RegExp(punctuationPattern), '')
      // Add delimiter
      .replaceAll(' ', delimiter);

  return slug;
}