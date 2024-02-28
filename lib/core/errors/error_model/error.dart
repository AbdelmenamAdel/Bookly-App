import 'package:equatable/equatable.dart';

import 'error.dart';

class Error extends Equatable {
  final int? code;
  final String? message;
  final List<Error>? errors;

  const Error({this.code, this.message, this.errors});

  factory Error.fromJson(Map<String, dynamic> json) => Error(
        code: json['code'] as int?,
        message: json['message'] as String?,
        errors: (json['errors'] as List<dynamic>?)
            ?.map((e) => Error.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'message': message,
        'errors': errors?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [code, message, errors];
}
