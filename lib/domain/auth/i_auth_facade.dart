import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:todo_ddd/domain/auth/auth_failure.dart';
import 'package:todo_ddd/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password
  });

  Future<Either<AuthFailure, Unit>> signWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password
  });

  Future<Either<AuthFailure, Unit>> registerWithGoogle();
}