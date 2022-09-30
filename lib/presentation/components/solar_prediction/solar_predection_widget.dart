import 'package:flutter/material.dart';
import 'package:space_project/core/utils/app_assets.dart';
import 'package:space_project/core/utils/app_colors.dart';
import 'package:space_project/presentation/components/solar_prediction/solar_prediction_element.dart';

class SolarPredictionWidget extends StatelessWidget {
  final double unixTime;
  final String data;
  final String time;
  final double radiation;
  final double temp;
  final double pressure;
  final double humidity;
  final double windDirection;
  final double speed;
  final String timeSunrise;
  final String timeSunset;

  const SolarPredictionWidget(
      {Key? key,
      required this.unixTime,
      required this.data,
      required this.time,
      required this.radiation,
      required this.temp,
      required this.pressure,
      required this.humidity,
      required this.windDirection,
      required this.speed,
      required this.timeSunrise,
      required this.timeSunset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 640,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: AppColors.darkGrey),
        child: Column(
          children: [
            SolarPredictionElement(
              image: ImageAssets.unixTimeIc,
              name: 'UNIX Time: ',
              value: '$unixTime',
            ),
            const SizedBox(
              height: 5,
            ),
            SolarPredictionElement(
              image: ImageAssets.dataIc,
              name: 'Data',
              value: data,
            ),
            const SizedBox(
              height: 5,
            ),
            SolarPredictionElement(
              image: ImageAssets.timeIc,
              name: 'Time',
              value: time,
            ),
            const SizedBox(
              height: 5,
            ),
            SolarPredictionElement(
              image: ImageAssets.radiationIc,
              name: 'Radiation',
              value: '$radiation',
            ),
            const SizedBox(
              height: 5,
            ),
            SolarPredictionElement(
              image: ImageAssets.tempIc,
              name: 'Temperature',
              value: '$temp',
            ),
            const SizedBox(
              height: 5,
            ),
            SolarPredictionElement(
              image: ImageAssets.pressureIc,
              name: 'Pressure',
              value: '$pressure',
            ),
            const SizedBox(
              height: 5,
            ),
            SolarPredictionElement(
              image: ImageAssets.humidityIc,
              name: 'Humidity',
              value: '$humidity',
            ),
            const SizedBox(
              height: 5,
            ),
            SolarPredictionElement(
              image: ImageAssets.windDirectionIc,
              name: 'Wind Direction',
              value: '$windDirection',
            ),
            const SizedBox(
              height: 5,
            ),
            SolarPredictionElement(
              image: ImageAssets.speedIc,
              name: 'Speed',
              value: '$speed',
            ),
            const SizedBox(
              height: 5,
            ),
            SolarPredictionElement(
              image: ImageAssets.timeSunriseIc,
              name: 'Time Sunrise',
              value: timeSunrise,
            ),
            const SizedBox(
              height: 5,
            ),
            SolarPredictionElement(
              image: ImageAssets.timeSunsetIc,
              name: 'Time Sunset',
              value: timeSunset,
            ),
          ],
        ));
  }
}
