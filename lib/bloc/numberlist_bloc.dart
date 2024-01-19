import 'package:bloc/bloc.dart';
import 'package:bloc_list_example/utils/update_list.dart';
import 'package:equatable/equatable.dart';

part 'numberlist_event.dart';
part 'numberlist_state.dart';

class NumberlistBloc extends Bloc<NumberlistEvent, NumberlistState> {
  NumberlistBloc() : super(NumberlistInitial()) {
    print('At 10');
    on<ListUpdatedEvent>((event, emit) {
      try {
        print('Inside try Block');
        UpdateTheList.toUpdateTheList();
        emit(NumberlistUpdatedState(UpdateTheList.numbersList));
        print('state emitted');
      } catch (e) {
        print('catch');
        emit(NumberErrorState(errorMessage: e.toString()));
      }
    });
  }
}
