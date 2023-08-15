import 'package:fuelflow/core/domain/usecase/use_case.dart';
import 'package:fuelflow/domain/entity/activities/activities.dart';
import 'package:fuelflow/domain/repository/activities/activities_repository.dart';

class FindActivitiesByIdUseCase extends UseCase<List<StoreActivities>, String> {
  final StoreActivitiesRepository _activitiesRepository;

  FindActivitiesByIdUseCase(this._activitiesRepository);

  @override
  Future<List<StoreActivities>> call({required String params}) {
    return _activitiesRepository.findStoreActivityById(params);
  }
}
