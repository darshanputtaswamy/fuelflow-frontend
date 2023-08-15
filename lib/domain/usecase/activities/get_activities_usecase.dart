
import 'package:fuelflow/core/domain/usecase/use_case.dart';
import 'package:fuelflow/domain/entity/activities/activities_list.dart';
import 'package:fuelflow/domain/repository/activities/activities_repository.dart';

class GetActivitiesUseCase extends UseCase<StoreActivitiesList,String> {

  final StoreActivitiesRepository _activitiesRepository;

  GetActivitiesUseCase(this._activitiesRepository);

  @override
  Future<StoreActivitiesList> call({required String params}) {
    return _activitiesRepository.getStoreActivitiesList(params);
  }
}