class Subscription {
  String? uid;
  String? storeUid;
  String? initiatedUserUid;
  String? planId;
  DateTime? planStartDate;
  String? status;
  DateTime? createdDate;
  DateTime? updatedDate;

Subscription({
  this.uid,
  this.storeUid,
  this.initiatedUserUid,
  this.planId,
  this.planStartDate,
  this.status,
  this.createdDate,
  this.updatedDate,
});


  factory Subscription.fromMap(Map<String, dynamic> json) => Subscription(
        uid : json['uid'],
        storeUid : json['store_uid'],
        initiatedUserUid : json['initiated_user_uid'],
        planId : json['plan_id'],
        planStartDate : json['plan_start_date'] != null
            ? DateTime.parse(json['plan_start_date'])
            : null,
        status : json['status'],
        createdDate : DateTime.parse(json['created_date']),
        updatedDate :
            json['updated_date'] != null ? DateTime.parse(json['updated_date']) : null
      );

  Subscription.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        storeUid = json['store_uid'],
        initiatedUserUid = json['initiated_user_uid'],
        planId = json['plan_id'],
        planStartDate = json['plan_start_date'] != null
            ? DateTime.parse(json['plan_start_date'])
            : null,
        status = json['status'],
        createdDate = DateTime.parse(json['created_date']),
        updatedDate =
            json['updated_date'] != null ? DateTime.parse(json['updated_date']) : null;

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'store_uid': storeUid,
        'initiated_user_uid': initiatedUserUid,
        'plan_id': planId,
        'plan_start_date': planStartDate?.toIso8601String(),
        'status': status,
        'created_date': createdDate?.toIso8601String(),
        'updated_date': updatedDate?.toIso8601String(),
      };
}