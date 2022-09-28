import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:space_project/core/error/failure.dart';
import 'package:space_project/core/usecase/base_use_case.dart';
import 'package:space_project/domain/entity/apod/apod.dart';
import 'package:space_project/domain/repository/base_app_repository.dart';

class GetApodUseCase extends BaseUseCase <List<Apod>,ApodParameters>{
  final BaseAppRepository baseAppRepository;

  GetApodUseCase(this.baseAppRepository);

  @override
  Future<Either<Failure, List<Apod>>> call(ApodParameters parameters) async{
    return await baseAppRepository.getApod(parameters);
  }

}

class ApodParameters extends Equatable {
  final int count;

  const ApodParameters({required this.count});

  @override
  List<Object> get props => [count];
}