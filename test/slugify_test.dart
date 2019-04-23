import "package:test/test.dart" show equals, expect, test;
import 'package:slugify/slugify.dart';

void main() {
  // test 1: Defaults
  test('Defaults', () {
    Slugify slugify = Slugify();
    expect(slugify.slugify('This is a test'), equals('this-is-a-test'));
  });

  // test 2: Delimiter
  test('Custom delimiter', () {
    Slugify slugify = Slugify(delimiter: '%');
    expect(slugify.slugify('Per Cent'), equals('per%cent'));
  });

  // test 3: Uppercase
  test('Uppercase', () {
    Slugify slugify = Slugify(lowercase: false);
    expect(slugify.slugify('CAPS LOCK IS CRUISE CONTROL FOR COOL'),
        equals('CAPS-LOCK-IS-CRUISE-CONTROL-FOR-COOL'));
  });

  // test 4: character replacement
  test('Character replacement', () {
    Slugify slugify = Slugify();
    expect(slugify.slugify('Scheiße'), equals('scheisse'));
  });
}
