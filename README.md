# Slugify

Dart package to convert a **string** to a **slug**, useful for URLs, filenames, IDs and more.

## Features

* Removes unfavorable characters
* Approximates replacements for characters not in the Latin alphabet
* Options for a custom delimiter and case sensitivity
* Supports Dart 2

## Usage

```dart
import 'package:slugify/slugify.dart';

// Use with default options.
String slug = Slugify('Hello, World! Foo Bar');
print(slug); // hello-world-foo-bar

// Use with custom options.
String slug2 = Slugify('Hello, World! Foo Bar', lowercase: false, delimiter: '🙂');
print(slug2) // Hello🙂World🙂Foo🙂Bar
```

### Options

Name | Type | Default | Description
--- | --- | --- | ---
`delimiter` | `String` | `"-"` | Separator between words
`lowercase` | `bool` | `true` | Convert text to lowercase
