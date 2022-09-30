import 'package:equatable/equatable.dart';

class SolarPrediction extends Equatable {
  final double unixTime;
  final String data;
  final String time;
  // final DateTime data;
  // final DateTime time;
  final double radiation;
  final double temperature;
  final double pressure;
  final double humidity;
  final double windDirectionDegrees;
  final double speed;
  final String timeSunRise;
  final String timeSunSet;
  // final DateTime timeSunRise;
  // final DateTime timeSunSet;

  const SolarPrediction({
    required this.unixTime,
    required this.data,
    required this.time,
    required this.radiation,
    required this.temperature,
    required this.pressure,
    required this.humidity,
    required this.windDirectionDegrees,
    required this.speed,
    required this.timeSunRise,
    required this.timeSunSet,});

  @override
  List<Object> get props =>
      [
        unixTime,
        data,
        time,
        radiation,
        temperature,
        pressure,
        humidity,
        windDirectionDegrees,
        speed,
        timeSunRise,
        timeSunSet,
      ];
}