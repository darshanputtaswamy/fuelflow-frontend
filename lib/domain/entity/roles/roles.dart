class StoreRoles{
  String? uid;
  String? storeUid;
  String? roles;

  StoreRoles({
    this.uid,
    this.storeUid,
    this.roles,
  });

  factory StoreRoles.fromMap(Map<String, dynamic> json) => StoreRoles(
        uid: json["uid"],
        storeUid: json["store_uid"],
        roles: json["roles"],
      );

  StoreRoles.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        storeUid = json['store_uid'],
        roles = json['roles'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'store_uid': storeUid,
        'activity_type': roles,
      };
}