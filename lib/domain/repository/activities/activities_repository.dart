import 'dart:async';

import 'package:fuelflow/domain/entity/activities/activities.dart';
import 'package:fuelflow/domain/entity/activities/activities_list.dart';

abstract class PostRepository {
  Future<StoreActivitiesList> getStoreActivitiesList(String store_uid);

  Future<List<StoreActivitiesList>> findStoreActivityById(String uid);

  Future<int> insert(StoreActivities activities);

  Future<int> update(StoreActivities activities);

  Future<int> delete(StoreActivities activities);
}
