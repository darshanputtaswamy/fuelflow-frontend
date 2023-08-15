import 'package:fuelflow/core/domain/usecase/use_case.dart';
import 'package:fuelflow/domain/entity/activities/activities.dart';
import 'package:fuelflow/domain/repository/activities/activities_repository.dart';

class UpdateActivitiesUseCase extends UseCase<String, StoreActivities> {
  final StoreActivitiesRepository _activitiesRepository;

  UpdateActivitiesUseCase(this._activitiesRepository);

  @override
  Future<String> call({required params}) {
    return _activitiesRepository.update(params);
  }
}
