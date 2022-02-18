// 📦 Package imports:
import 'package:meta/meta.dart';

/// Models the absence of values.
///
/// Option<A> is a container for an optional value of type A.
/// If the value of type A is present, the Option<A> is an instance of Some<A>,
/// containing the present value of type A.
/// If the value is absent, the Option<A> is the object None.
@sealed
abstract class Optional<T> {
  const Optional._();

  /// Create [None].
  factory Optional.none() = None;

  /// Create a [Some] with [value].
  const factory Optional.some(T value) = Some;

  /// Return [None] if [value] is null.
  /// Otherwise, return [Some] containing [value].
  factory Optional.fromNullable(T? value) =>
      value == null ? Optional.none() : Optional.some(value);

  /// Applies `none` if this is a [None] or `some` if this is a [Some].
  /// Return the results of applying the function.
  R fold<R>(R Function() none, R Function(T) some) {
    final self = this;
    return self is Some<T> ? some(self.value) : none();
  }

  /// Returns a [Some<R>] containing the result of applying [mapper] to this option's
  /// value if this option is nonempty. Otherwise return [None].
  ///
  /// Params [mapper] is the function to apply.
  Optional<R> map<R>(R Function(T) mapper) {
    final self = this;
    if (self is Some<T>) {
      return Optional.some(mapper(self.value));
    }
    if (self is None) {
      return Optional.none();
    }
    throw 'Something was wrong $this';
  }
}

class Some<T> extends Optional<T> {
  final T value;

  const Some(this.value) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Some && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Some{value: $value}';
}

class None extends Optional<Never> {
  const None._() : super._();

  factory None() => const None._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is None && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;

  @override
  String toString() => 'None';
}
