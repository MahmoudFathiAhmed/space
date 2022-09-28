part of 'apod_bloc.dart';

abstract class ApodEvent extends Equatable {
  const ApodEvent();

  @override
  List<Object> get props => [];
}

class GetApodEvent extends ApodEvent {
  final int count;

  const GetApodEvent(this.count);

  @override
  List<Object> get props => [count];
}
