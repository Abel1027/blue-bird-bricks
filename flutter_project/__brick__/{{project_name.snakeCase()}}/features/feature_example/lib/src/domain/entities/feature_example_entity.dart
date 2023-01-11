import 'package:dependencies/dependencies.dart';

class FeatureExampleEntity extends Equatable {
  const FeatureExampleEntity({
    required this.text,
    required this.number,
  });

  final String text;
  final int number;

  FeatureExampleEntity copyWith({
    String? text,
    int? number,
  }) {
    return FeatureExampleEntity(
      text: text ?? this.text,
      number: number ?? this.number,
    );
  }

  @override
  String toString() => 'FeatureExampleEntity(text: $text, number: $number)';

  @override
  List<Object> get props => [text, number];
}
