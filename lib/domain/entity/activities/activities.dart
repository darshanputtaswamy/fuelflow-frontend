class StoreActivities{
  String? uid;
  String? storeUid;
  String? activityType;

  StoreActivities({
    this.uid,
    this.storeUid,
    this.activityType,
  });

  factory StoreActivities.fromMap(Map<String, dynamic> json) => StoreActivities(
        uid: json["uid"],
        storeUid: json["store_uid"],
        activityType: json["activity_type"],
      );

  StoreActivities.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        storeUid = json['store_uid'],
        activityType = json['activity_type'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'store_uid': storeUid,
        'activity_type': activityType,
      };
}