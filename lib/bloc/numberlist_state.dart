part of 'numberlist_bloc.dart';

sealed class NumberlistState extends Equatable {
  const NumberlistState();

  @override
  List<Object> get props => [];
}

final class NumberlistInitial extends NumberlistState {}

// ignore: must_be_immutable
final class NumberlistUpdatedState extends NumberlistState {
  final List<int> numbersList;
  const NumberlistUpdatedState(this.numbersList);
  @override
  List<Object> get props => [numbersList];
}

final class NumberErrorState extends NumberlistState {
  final String errorMessage;

  const NumberErrorState({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}
