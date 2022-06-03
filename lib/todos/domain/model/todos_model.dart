import 'dart:ffi';

import 'package:equatable/equatable.dart';

class TodosModel extends Equatable {
  final String title;

  TodosModel({
    required this.title,
  });

  // --------------/CopyWith serve para o update pois ele troca os valores /---------------//
  TodosModel copyWith({String? title}) {
    return TodosModel(
      title: title ?? this.title,
    );
  }

  // --------------/toMap para dar o parse para o json /---------------//
  Map<String, dynamic> toMap() {
    return {
      'title': title,
    };
  }

  // --------------/fromMap para dar o parse do json para o model /---------------//
  factory TodosModel.fromMap(Map<String, dynamic> map) {
    return TodosModel(
      title: map['title'] ?? '',
    );
  }

  // --------------/Equatable para comparar os valores /---------------//
  @override
  List<Object?> get props => [
        title,
      ];
}
