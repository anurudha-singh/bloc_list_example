part of 'numberlist_bloc.dart';

sealed class NumberlistEvent extends Equatable {
  const NumberlistEvent();

  @override
  List<Object> get props => [];
}

class ListUpdatedEvent extends NumberlistEvent {}
