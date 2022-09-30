import 'package:space_project/domain/entity/solar_prediction/solar_prediction.dart';

class SolarPredictionModel extends SolarPrediction {
  const SolarPredictionModel({required super.unixTime,
    required super.data,
    required super.time,
    required super.radiation,
    required super.temperature,
    required super.pressure,
    required super.humidity,
    required super.windDirectionDegrees,
    required super.speed,
    required super.timeSunRise,
    required super.timeSunSet});

  factory SolarPredictionModel.fromJson(Map<String, dynamic> json)=>
      SolarPredictionModel(
          unixTime: json['UNIXTime'].toDouble(),
          data: json['Data'],
          time: json['Time'],
          radiation: json['Radiation'].toDouble(),
          temperature: json['Temperature'].toDouble(),
          pressure: json['Pressure'].toDouble(),
          humidity: json['Humidity'].toDouble(),
          windDirectionDegrees: json['WindDirection(Degrees)'].toDouble(),
          speed: json['Speed'].toDouble(),
          timeSunRise: json['TimeSunRise'],
          timeSunSet: json['TimeSunSet']);
}
