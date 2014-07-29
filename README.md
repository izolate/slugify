# slugify

Converts strings to slugs, for pretty URLs

## Features

* Removes special characters
* Approximates replacements for characters not in the Latin alphabet
* Allows custom delimiter and case sensitivity

## Usage

    import 'package:slugify/slugify.dart';

    Slugify slugify = new Slugify();
    String slug = slugify.slugify('Hello World!');

    print(slug); // hello-world

### Custom settings

By default, the slugs returned are lowercased and delimited by `-` to optimize for URL use. You can override this by supplying the parameters `delimiter (String)` and `lowercase (bool)` when instantiating the class.

    new Slugify(delimiter: '_', lowercase: false); // HELLO_WORLD
