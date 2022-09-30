import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_project/core/usecase/base_use_case.dart';
import 'package:space_project/core/utils/enum.dart';
import 'package:space_project/domain/entity/solar_prediction/solar_prediction.dart';
import 'package:space_project/domain/usecase/get_solar_prediction_usecase.dart';

part 'solar_prediction_event.dart';

part 'solar_prediction_state.dart';

class SolarPredictionBloc
    extends Bloc<SolarPredictionEvent, SolarPredictionState> {
  GetSolarPredictionUseCase getSolarPredictionUseCase;

  SolarPredictionBloc(this.getSolarPredictionUseCase)
      : super(const SolarPredictionState()) {
    on<GetSolarPredictionEvent>(_getSolarPrediction);
  }

  FutureOr<void> _getSolarPrediction(
      GetSolarPredictionEvent event, Emitter<SolarPredictionState> emit) async{
    final result = await getSolarPredictionUseCase(const NoParameters());
    result.fold(
          (l) =>
          emit(state.copyWith(
              solarPredictionState: RequestState.error,
              solarPredictionMessage: l.message)),
          (r) =>
          emit(state.copyWith(
              solarPrediction: r, solarPredictionState: RequestState.loaded)),
    );
  }
  }

