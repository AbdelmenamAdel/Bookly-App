import 'package:equatable/equatable.dart';

import 'error.dart';

class ErrorModel extends Equatable {
  final Error? error;

  const ErrorModel({this.error});

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        error: json['error'] == null
            ? null
            : Error.fromJson(json['error'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'error': error?.toJson(),
      };

  @override
  List<Object?> get props => [error];
}
