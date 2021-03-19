import 'package:test/test.dart' show equals, expect, test, group;
import 'package:slugify3/slugify3.dart';

void main() {
  group('Standard method', () {
    test('returns a slugified string with default options', () {
      final result = slugify('Hello, world! This is a test');
      final expected = 'hello-world-this-is-a-test';
      expect(result, equals(expected));
    });

    test('preserves case when lowercase is false', () {
      final result = slugify('CAPS LOCK IS STUCK ON', lowercase: false);
      final expected = 'CAPS-LOCK-IS-STUCK-ON';
      expect(result, equals(expected));
    });

    test('supports a custom delimiter', () {
      final result = slugify('The tests are all passing', delimiter: '👏');
      final expected = 'the👏tests👏are👏all👏passing';
      expect(result, equals(expected));
    });

    test('normalizes text to the latin character set', () {
      final result = slugify('Nín hǎo. Wǒ shì zhōng guó rén');
      final expected = 'nin-hao-wo-shi-zhong-guo-ren';
      expect(result, equals(expected));
    });

    test('trims leading/trailing whitespace', () {
      final result = slugify('  too many spaces  ');
      final expected = 'too-many-spaces';
      expect(result, equals(expected));
    });

    test('removes or replaces punctuation', () {
      final result = slugify('("foo!*") <&> ~[^b@r!#=];');
      final expected = 'foo-and-batr';
      expect(result, equals(expected));
    });
  });
  group('Extension method', () {
    test('returns a slugified string with default options', () {
      final result = 'Hello, world! This is a test'.slugify();
      final expected = 'hello-world-this-is-a-test';
      expect(result, equals(expected));
    });

    test('preserves case when lowercase is false', () {
      final result = 'CAPS LOCK IS STUCK ON'.slugify(lowercase: false);
      final expected = 'CAPS-LOCK-IS-STUCK-ON';
      expect(result, equals(expected));
    });

    test('supports a custom delimiter', () {
      final result = 'The tests are all passing'.slugify(delimiter: '👏');
      final expected = 'the👏tests👏are👏all👏passing';
      expect(result, equals(expected));
    });

    test('normalizes text to the latin character set', () {
      final result = 'Nín hǎo. Wǒ shì zhōng guó rén'.slugify();
      final expected = 'nin-hao-wo-shi-zhong-guo-ren';
      expect(result, equals(expected));
    });

    test('trims leading/trailing whitespace', () {
      final result = '  too many spaces  '.slugify();
      final expected = 'too-many-spaces';
      expect(result, equals(expected));
    });

    test('removes or replaces punctuation', () {
      final result = slugify('("foo!*") <&> ~[^b@r!#=];');
      final expected = 'foo-and-batr';
      expect(result, equals(expected));
    });
  });
}
