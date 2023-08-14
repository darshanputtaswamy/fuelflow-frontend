class StoreRota {
  String? uid;
  String? storeUid;
  String? userUid;
  DateTime? fromDate;
  DateTime? tillDate;
  String? roleUid;
  String? activityUid;
  String? approvalStatus;

    StoreRota({
    this.uid,
    this.storeUid,
    this.userUid,
    this.fromDate,
    this.tillDate,
    this.roleUid,
    this.activityUid,
    this.approvalStatus
  });

  factory StoreRota.fromMap(Map<String, dynamic> json) => StoreRota(
        uid : json['uid'],
        storeUid : json['store_uid'],
        userUid : json['user_uid'],
        fromDate : DateTime.parse(json['from_date']),
        tillDate : DateTime.parse(json['till_date']),
        roleUid : json['role_uid'],
        activityUid : json['activity_uid'],
        approvalStatus : json['approval_status']
      );

  StoreRota.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        storeUid = json['store_uid'],
        userUid = json['user_uid'],
        fromDate = DateTime.parse(json['from_date']),
        tillDate = DateTime.parse(json['till_date']),
        roleUid = json['role_uid'],
        activityUid = json['activity_uid'],
        approvalStatus = json['approval_status'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'store_uid': storeUid,
        'user_uid': userUid,
        'from_date': fromDate?.toIso8601String(),
        'till_date': tillDate?.toIso8601String(),
        'role_uid': roleUid,
        'activity_uid': activityUid,
        'approval_status': approvalStatus,
      };
}
