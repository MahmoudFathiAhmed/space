import 'dart:async';


import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_project/core/utils/enum.dart';
import 'package:space_project/domain/entity/apod/apod.dart';
import 'package:space_project/domain/usecase/get_apod_usecase.dart';

part 'apod_event.dart';
part 'apod_state.dart';

class ApodBloc extends Bloc<ApodEvent, ApodState> {
  GetApodUseCase getApodUseCase;
  ApodBloc(this.getApodUseCase) : super(const ApodState()) {
    on<GetApodEvent>(_getApod);
  }

  FutureOr<void> _getApod(GetApodEvent event, Emitter<ApodState> emit) async{
    final result = await getApodUseCase(ApodParameters(count: event.count));
    result.fold(
          (l) =>
          emit(state.copyWith(
              apodState: RequestState.error,
              apodMessage: l.message)),
          (r) =>
          emit(state.copyWith(
              apod: r, apodState: RequestState.loaded)),
    );
  }
}
