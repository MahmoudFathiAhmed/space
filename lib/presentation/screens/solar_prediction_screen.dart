import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_project/core/services/service_locator.dart';
import 'package:space_project/core/utils/app_colors.dart';
import 'package:space_project/core/utils/values_manager.dart';
import 'package:space_project/presentation/components/solar_prediction/solar_predection_widget.dart';
import 'package:space_project/presentation/controller/solar_prediction/solar_prediction_bloc.dart';

class SolarPredictionScreen extends StatelessWidget {
  const SolarPredictionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<SolarPredictionBloc>()..add(GetSolarPredictionEvent()),
      child: BlocBuilder<SolarPredictionBloc, SolarPredictionState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.darkBcGrnd,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColors.darkBcGrnd,
              title: const Text('Solar Prediction'),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_circle_left_outlined,
                  color: AppColors.offWhite,
                  size: AppSize.s35,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.separated(
                  itemBuilder: (context, index) => SolarPredictionWidget(
                      unixTime: state.solarPrediction[index].unixTime,
                      data: state.solarPrediction[index].data,
                      time: state.solarPrediction[index].time,
                      radiation: state.solarPrediction[index].radiation,
                      temp: state.solarPrediction[index].temperature,
                      pressure: state.solarPrediction[index].pressure,
                      humidity: state.solarPrediction[index].humidity,
                      windDirection: state.solarPrediction[index].windDirectionDegrees,
                      speed: state.solarPrediction[index].speed,
                      timeSunrise: state.solarPrediction[index].timeSunRise,
                      timeSunset: state.solarPrediction[index].timeSunSet),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: state.solarPrediction.length),
            ),
          );
        },
      ),
    );
  }
}
