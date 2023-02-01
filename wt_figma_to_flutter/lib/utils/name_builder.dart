import 'dart:io';

class NameBuilder {
  static String createClassName(String name) {
    return capitalCase(name.split(' '));
  }

  static File createPreviewFile(String name) {
    final strippedName = name.replaceAll('/', '');
    final fileName = snakeCase(strippedName.split(' '));
    return File('lib/generated/previews/$fileName.svg');
  }

  static File createClassFile(String name) {
    final fileName = snakeCase(name.split(' '));
    return File('lib/generated/components/$fileName.dart');
  }

  static String capitalCase(List<String> words) {
    final firstWord = capitalise(words.first);
    final restOfWords = words.sublist(1).map((word) => capitalise(word)).toList();
    return [firstWord, ...restOfWords].join();
  }

  static String camelCase(List<String> words) {
    final firstWord = words.first.toLowerCase();
    final restOfWords = words.sublist(1).map((word) => capitalise(word)).toList();
    return [firstWord, ...restOfWords].join();
  }

  static String snakeCase(List<String> words) {
    return words.map((word) => word.toLowerCase()).join('_');
  }

  static String capitalise(String string) {
    return string.isEmpty
        ? string
        : string.length == 1
            ? string.toUpperCase()
            : '${string.substring(0, 1).toUpperCase()}${string.substring(1)}';
  }
}
