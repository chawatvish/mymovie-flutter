import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<AllHomeEvent, HomeState> {
  HomeBloc() : super(const HomeState(AllHomeStatus.initial)) {
    on<InitView>((event, emit) {
      emit(state.copyWith(AllHomeStatus.initial));

    });

    on<ViewHasLoaded>((event, emit) {
      emit(state.copyWith(AllHomeStatus.loading));
    });
  }
}
