import 'package:counter_example/features/representation/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of<CounterCubit>(context);

  int counter = 1;

  void increment() {
    counter++;
    emit(CounterIncrementState());
  }

  void decrement() {
    if (counter > 0) {
      counter--;
      emit(CounterIncrementState());
    }
  }
}
