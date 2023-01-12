import 'package:dependencies/dependencies.dart';

class {{project_name.pascalCase()}}Entity extends Equatable {
  const {{project_name.pascalCase()}}Entity({
    required this.text,
    required this.number,
  });

  final String text;
  final int number;

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
