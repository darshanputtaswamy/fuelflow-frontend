import 'dart:async';

import 'package:fuelflow/domain/entity/activities/activities.dart';
import 'package:fuelflow/domain/entity/activities/activities_list.dart';

abstract class StoreActivitiesRepository {
  Future<StoreActivitiesList> getStoreActivitiesList(String store_uid);

  Future<List<StoreActivities>> findStoreActivityById(String uid);

  Future<String> insert(StoreActivities activities);

  Future<String> update(StoreActivities activities);

  Future<String> delete(StoreActivities activities);
}
