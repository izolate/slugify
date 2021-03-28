# slugify

Converts any `String` to a **slug**. Useful for URLs, filenames, IDs, and more.

## Features

* Multi-language support
* Removes unfriendly characters
* Approximates replacements for characters not in the Latin alphabet
* Configurable options
* Null safe with Dart 2.12

## Usage

```dart
import 'package:slugify/slugify.dart';

// Use with default options.
var slug = slugify('Hello, World! Foo Bar');
print(slug); // hello-world-foo-bar

// Use with custom options.
var slug2 = slugify('Hello, World! Foo Bar', lowercase: false, delimiter: '🙂');
print(slug2) // Hello🙂World🙂Foo🙂Bar
```

### Options

Name | Type | Default | Description
--- | --- | --- | ---
`delimiter` | `String` | `"-"` | Separator between words
`lowercase` | `bool` | `true` | Convert text to lowercase
