{{#in_project}}import 'package:dependencies/dependencies.dart';{{/in_project}}{{^in_project}}import 'package:equatable/equatable.dart';{{/in_project}}

/// {@template {{project_name.snakeCase()}}_entity}
/// {{{description}}}
/// {@endtemplate}
class {{project_name.pascalCase()}}Entity extends Equatable {
  /// {@macro {{project_name.snakeCase()}}_entity}
  const {{project_name.pascalCase()}}Entity({
    required this.text,
    required this.number,
  });

  /// [text] doc
  final String text;
  /// [number] doc
  final int number;

  /// [copyWith] doc
  {{project_name.pascalCase()}}Entity copyWith({
    String? text,
    int? number,
  }) {
    return {{project_name.pascalCase()}}Entity(
      text: text ?? this.text,
      number: number ?? this.number,
    );
  }

  @override
  String toString() => '{{project_name.pascalCase()}}Entity(text: $text, number: $number)';

  @override
  List<Object> get props => [text, number];
}
