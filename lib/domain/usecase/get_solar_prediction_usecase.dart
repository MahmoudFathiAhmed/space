import 'package:dartz/dartz.dart';
import 'package:space_project/core/error/failure.dart';
import 'package:space_project/core/usecase/base_use_case.dart';
import 'package:space_project/domain/entity/solar_prediction/solar_prediction.dart';
import 'package:space_project/domain/repository/base_app_repository.dart';

class GetSolarPredictionUseCase extends BaseUseCase <List<SolarPrediction>,NoParameters>{
  final BaseAppRepository baseAppRepository;

  GetSolarPredictionUseCase(this.baseAppRepository);

  @override
  Future<Either<Failure, List<SolarPrediction>>> call(NoParameters parameters) async{
    return await baseAppRepository.getSolarPrediction(parameters);
  }

}