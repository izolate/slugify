import 'package:test/test.dart' show equals, expect, test;
import 'package:slugify/slugify.dart';

void main() {
  test('returns a slugified string with default options', () {
    var result = slugify('Hello, world! This is a test');
    var expected = 'hello-world-this-is-a-test';
    expect(result, equals(expected));
  });

  test('preserves case when lowercase is false', () {
    var result = slugify('CAPS LOCK IS STUCK ON', lowercase: false);
    var expected = 'CAPS-LOCK-IS-STUCK-ON';
    expect(result, equals(expected));
  });

  test('supports a custom delimiter', () {
    var result = slugify('The tests are all passing', delimiter: '👏');
    var expected = 'the👏tests👏are👏all👏passing';
    expect(result, equals(expected));
  });

  test('normalizes text to the latin character set', () {
    var result = slugify('Nín hǎo. Wǒ shì zhōng guó rén');
    var expected = 'nin-hao-wo-shi-zhong-guo-ren';
    expect(result, equals(expected));
  });

  test('Georgian text (unicode) support without latin character set', () {
    var result = slugify(' თ~ე\$თრი-& თრ#ითი/ნა^ @_ თე%თრ (თო3ლზე); თრთოდა?');
    var expected = 'თეთრი-and-თრითინა-at-თეთრ-თო3ლზე-თრთოდა';
    expect(result, equals(expected));
  });

  test('Non-english text (unicode): Example 1 Input from issue #10', () {
    var result = slugify('ငယ်ငယ်ရွယ်ရွယ်နဲ့ ဆံပင်ဖြူခြင်း');
    var expected = 'ငယငယရယရယန-ဆပငဖခင';
    expect(result, equals(expected));
  });

  test('Non-english text (unicode): Example 2 Input from issue #10', () {
    var result = slugify('बदले उसीएक् निर्माण करके(विशेष');
    var expected = 'बदल-उसएक-नरमण-करकवशष';
    expect(result, equals(expected));
  });

  test('trims leading/trailing whitespace', () {
    var result = slugify('  too many spaces  ');
    var expected = 'too-many-spaces';
    expect(result, equals(expected));
  });

  test('removes or replaces punctuation', () {
    var result = slugify('("foo!*") <&> ~[^b@r!#=];');
    var expected = 'foo-and-batr';
    expect(result, equals(expected));
  });
}
