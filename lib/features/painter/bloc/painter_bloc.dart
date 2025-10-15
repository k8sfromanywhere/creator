import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'painter_event.dart';
part 'painter_state.dart';

class PainterBloc extends Bloc<PainterEvent, PainterState> {
  PainterBloc() : super(PainterInitial()) {
    on<PainterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
