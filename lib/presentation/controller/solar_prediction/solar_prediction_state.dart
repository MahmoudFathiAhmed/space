part of 'solar_prediction_bloc.dart';

class SolarPredictionState extends Equatable {
  final List<SolarPrediction> solarPrediction;
  final RequestState solarPredictionState;
  final String solarPredictionMessage;

  const SolarPredictionState({
    this.solarPrediction = const [
      SolarPrediction(
        unixTime: 1475229326,
        data: '1475229326',
        time: '23:55:26',
        radiation: 1.21,
        temperature: 48,
        pressure: 30.46,
        humidity: 59,
        windDirectionDegrees: 177.39,
        speed: 5.62,
        timeSunRise: '06:13:00',
        timeSunSet: '18:13:00',
      ),
      SolarPrediction(
        unixTime: 1475229326,
        data: '1475229326',
        time: '23:55:26',
        radiation: 1.21,
        temperature: 48,
        pressure: 30.46,
        humidity: 59,
        windDirectionDegrees: 177.39,
        speed: 5.62,
        timeSunRise: '06:13:00',
        timeSunSet: '18:13:00',
      ),
      SolarPrediction(
        unixTime: 1475229326,
        data: '1475229326',
        time: '23:55:26',
        radiation: 1.21,
        temperature: 48,
        pressure: 30.46,
        humidity: 59,
        windDirectionDegrees: 177.39,
        speed: 5.62,
        timeSunRise: '06:13:00',
        timeSunSet: '18:13:00',
      ),
      SolarPrediction(
        unixTime: 1475229326,
        data: '1475229326',
        time: '23:55:26',
        radiation: 1.21,
        temperature: 48,
        pressure: 30.46,
        humidity: 59,
        windDirectionDegrees: 177.39,
        speed: 5.62,
        timeSunRise: '06:13:00',
        timeSunSet: '18:13:00',
      ),
    ],
    this.solarPredictionMessage = '',
    this.solarPredictionState = RequestState.loading,
  });

  SolarPredictionState copyWith({
    List<SolarPrediction>? solarPrediction,
    RequestState? solarPredictionState,
    String? solarPredictionMessage,
  }) {
    return SolarPredictionState(
      solarPrediction: solarPrediction ?? this.solarPrediction,
      solarPredictionState: solarPredictionState ?? this.solarPredictionState,
      solarPredictionMessage:
          solarPredictionMessage ?? this.solarPredictionMessage,
    );
  }

  @override
  List<Object> get props => [
        solarPrediction,
        solarPredictionState,
        solarPredictionMessage,
      ];
}
