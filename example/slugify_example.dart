import 'package:slugify/slugify.dart';

void main() {

  // slugify instances with different config
  Slugify slugify1 = new Slugify();
  Slugify slugify2 = new Slugify(lowercase: false);
  Slugify slugify3 = new Slugify(delimiter: '*');
  Slugify slugify4 = new Slugify(delimiter: ' ಠ_ಠ ', lowercase: false);

  print( slugify1.slugify('This is a standard post title') );
  print( slugify1.slugify('Robert\'); DROP TABLE Students;--') );
  print( slugify2.slugify('NO I CAN\'T **STOP** {YELL}ING CAUSE THAT\'S HOW I TALK!') );
  print( slugify3.slugify('u wot m8? i\'ll hook u in   \\the\\ (gabber) m8 i sw/er on `me` m.u.m.') );
  print( slugify4.slugify('VOULEZ-VOUS COUCHER AVEC MOI, s\'il te plaît?') );

}
