class StoreUserPrivilege {
  String? uid;
  String? userUid;
  String? storeUid;
  String? role;
  DateTime? createdDate;
  DateTime? updatedDate;

  StoreUserPrivilege({
    this.uid,
    this.userUid,
    this.storeUid,
    this.role,
    this.createdDate,
    this.updatedDate,
  });

  factory StoreUserPrivilege.fromMap(Map<String, dynamic> json) => StoreUserPrivilege(
        uid : json['uid'],
        userUid : json['user_uid'],
        storeUid : json['store_uid'],
        role : json['role'],
        createdDate : DateTime.parse(json['created_date']),
        updatedDate : DateTime.parse(json['updated_date']),
      );

  StoreUserPrivilege.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        userUid = json['user_uid'],
        storeUid = json['store_uid'],
        role = json['role'],
        createdDate = DateTime.parse(json['created_date']),
        updatedDate = DateTime.parse(json['updated_date']);

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'user_uid': userUid,
        'store_uid': storeUid,
        'role': role,
        'created_date': createdDate?.toIso8601String(),
        'updated_date': updatedDate?.toIso8601String(),
      };
}