part of 'painter_bloc.dart';

sealed class PainterState extends Equatable {
  const PainterState();
  
  @override
  List<Object> get props => [];
}

final class PainterInitial extends PainterState {}
