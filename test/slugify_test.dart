import 'package:test/test.dart' show equals, expect, test;
import 'package:slugify/slugify.dart';

void main() {
  test('returns a slugified string with default options', () {
    String result = Slugify('Hello, world! This is a test');
    String expected = 'hello-world-this-is-a-test';
    expect(result, equals(expected));
  });

  test('preserves case when lowercase is false', () {
    String result = Slugify('CAPS LOCK IS STUCK ON', lowercase: false);
    String expected = 'CAPS-LOCK-IS-STUCK-ON';
    expect(result, equals(expected));
  });

  test('supports a custom delimiter', () {
    String result = Slugify('The tests are all passing', delimiter: '👏');
    String expected = 'the👏tests👏are👏all👏passing';
    expect(result, equals(expected));
  });

  test('normalizes text to the latin character set', () {
    String result = Slugify('Nín hǎo. Wǒ shì zhōng guó rén');
    String expected = 'nin-hao-wo-shi-zhong-guo-ren';
    expect(result, equals(expected));
  });

  test('trims leading/trailing whitespace', () {
    String result = Slugify('  too many spaces  ');
    String expected = 'too-many-spaces';
    expect(result, equals(expected));
  });
}
