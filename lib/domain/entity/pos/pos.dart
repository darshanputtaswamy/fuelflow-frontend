
class POS {
  String? uid;
  String? storeUid;
  String? posName;
  String? posType;
  String? posContactUid;
  DateTime? createdDate;
  DateTime? updatedDate;

  POS.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        storeUid = json['store_uid'],
        posName = json['pos_name'],
        posType = json['pos_type'],
        posContactUid = json['pos_contact_uid'],
        createdDate = DateTime.parse(json['created_date']),
        updatedDate =
            json['updated_date'] != null ? DateTime.parse(json['updated_date']) : null;

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'store_uid': storeUid,
        'pos_name': posName,
        'pos_type': posType,
        'pos_contact_uid': posContactUid,
        'created_date': createdDate?.toIso8601String(),
        'updated_date': updatedDate?.toIso8601String(),
      };
}