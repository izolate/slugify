import 'package:slugify/slugify.dart';

void main() {
  var slugify = new Slugify();
  List slugs = [
    'Hello            World????????',
    'aáäâeéëeiíiîoóöőôuúüűunç·/_,:;',
  ];

  for (var slug in slugs) {
    print( slugify.slugify(value: slug) );
  }
}
