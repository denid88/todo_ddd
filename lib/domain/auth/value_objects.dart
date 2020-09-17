import 'package:dartz/dartz.dart';
import 'package:todo_ddd/domain/core/failures.dart';
import 'package:todo_ddd/domain/core/value_objects.dart';
import 'package:todo_ddd/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {

  final Either<ValueFailure<String>, String> _value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input)
    );
  }

  const EmailAddress._(this._value);

  @override
  Either<ValueFailure<String>, String> get value => _value;
}

class Password extends ValueObject<String> {

  final Either<ValueFailure<String>, String> _value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
        validatePassword(input)
    );
  }

  const Password._(this._value);

  @override
  Either<ValueFailure<String>, String> get value => _value;
}


