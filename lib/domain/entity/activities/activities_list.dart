import 'package:fuelflow/domain/entity/activities/activities.dart';

class StoreActivitiesList {
  final List<StoreActivities>? activities;

  StoreActivitiesList({
    this.activities,
  });

  factory StoreActivitiesList.fromJson(List<dynamic> json) {
    List<StoreActivities> activities = <StoreActivities>[];
    activities = json.map((activities) => StoreActivities.fromMap(activities)).toList();

    return StoreActivitiesList(
      activities: activities,
    );
  }
}
