import 'package:unittest/unittest.dart';
import 'package:slugify/slugify.dart';

void main() {

  Slugify slugify1 = new Slugify();
  Slugify slugify2 = new Slugify(delimiter: '%');
  Slugify slugify3 = new Slugify(lowercase: false);

  // test 1: Defaults
  test('Defaults', () {
    expect(
      slugify1.slugify('This is a test'),
      equals('this-is-a-test')
    );
  });

  // test 2: Delimiter
  test('Custom delimiter', () {
    expect(
      slugify2.slugify('Per Cent'),
      equals('per%cent')
    );
  });

  // test 3: Uppercase
  test('Uppercase', () {
    expect(
      slugify3.slugify('CAPS LOCK IS CRUISE CONTROL FOR COOL'),
      equals('CAPS-LOCK-IS-CRUISE-CONTROL-FOR-COOL')
    );
  });

  // test 4: character replacement
  test('Character replacement', () {
    expect(slugify1.slugify('Scheiße'), equals('scheisse'));
  });
}
