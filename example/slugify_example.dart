import 'package:slugify/slugify.dart';

/*
void main() {
  // slugify instances with different config
  Slugify slugify1 = new Slugify();
  Slugify slugify2 = new Slugify(lowercase: false);
  Slugify slugify3 = new Slugify(delimiter: '*');
  Slugify slugify4 = new Slugify(delimiter: ' ಠ_ಠ ', lowercase: false);

  print(slugify1.slugify('This is a standard post title'));
  print(slugify1.slugify('Robert\'); DROP TABLE Students;--'));
  print(slugify2
      .slugify('NO I CAN\'T **STOP** {YELL}ING CAUSE THAT\'S HOW I TALK!'));
  print(slugify3.slugify(
      'u wot m8? i\'ll hook u in   \\the\\ (gabber) m8 i sw/er on `me` m.u.m.'));
  print(slugify4.slugify('VOULEZ-VOUS COUCHER AVEC MOI, s\'il te plaît?'));
}
*/

void main() {
  // Slugify with default config
  var slug1 = Slugify('Hello, world!');
  print(slug1);

  // Set a custom delimiter
  var slug2 = Slugify('Some prefer snake case', delimiter: '_');
  print(slug2);

  // Preserve the original case
  var slug3 = Slugify('BREAKING NEWS', lowercase: false);
  print(slug3);

  // Normalize to latin characters
  var slug4 = Slugify("C'est déjà l'été.");
  print(slug4);
}
