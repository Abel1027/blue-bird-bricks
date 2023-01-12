import 'package:dependencies/dependencies.dart';

class {{package_name.pascalCase()}}Entity extends Equatable {
  const {{package_name.pascalCase()}}Entity({
    required this.text,
    required this.number,
  });

  final String text;
  final int number;

  {{package_name.pascalCase()}}Entity copyWith({
    String? text,
    int? number,
  }) {
    return {{package_name.pascalCase()}}Entity(
      text: text ?? this.text,
      number: number ?? this.number,
    );
  }

  @override
  String toString() => '{{package_name.pascalCase()}}Entity(text: $text, number: $number)';

  @override
  List<Object> get props => [text, number];
}
