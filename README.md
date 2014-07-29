# slugify

Converts strings to slugs, for pretty URLs

## Features

* Removes special characters
* Approximates replacements for characters not in the Latin alphabet
* Choose your own delimiter and letter case

## Usage

    import 'package:slugify/slugify.dart';
    
    Slugify slugify = new Slugify();
    String slug = slugify.slugify('Hello World!');

    print(slug); // hello-world

### Custom settings

    Slugify slugify = new Slugify(delimiter: '_', lowercase: false);
    String slug = slugify.slugify('HELLO WORLD');
    
    print(slug); // HELLO_WORLD
