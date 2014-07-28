import 'package:slugify/slugify.dart';

void main() {

  var case1 = new Slugify();
  print( case1.slugify('Robert\'); DROP TABLE Students;--') );

  var case2 = new Slugify(delimiter: '*');
  print( case2.slugify('u wot m8? i\'ll hook u in   \\the\\ (gabber) m8 i sw/ear on `me` m.u.m.') );

  var case3 = new Slugify(lowercase: false);
  print( case3.slugify('NO I CAN\'T STOP YELLING CAUSE THAT\'S HOW I TALK!') );

}
