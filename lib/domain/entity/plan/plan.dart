class Plans {
  String? uid;
  String? planType;
  String? planName;
  double? price;
  int? period;
  String? key;
  int? retentionLimit;
  int? userLimit;
  String? status;
  DateTime? createdDate;
  DateTime? updatedDate;

  Plans({

    this.uid,
    this.planType,
    this.planName,
    this.price,
    this.period,
    this.key,
    this.retentionLimit,
    this.userLimit,
    this.status,
    this.createdDate,
    this.updatedDate,
  });

  Plans.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        planType = json['plan_type'],
        planName = json['plan_name'],
        price = json['price'],
        period = json['period'],
        key = json['key'],
        retentionLimit = json['retention_limit'],
        userLimit = json['user_limit'],
        status = json['status'],
        createdDate = DateTime.parse(json['created_date']),
        updatedDate = json['updated_date'] != null ? DateTime.parse(json['updated_date']) : null;

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'plan_type': planType,
        'plan_name': planName,
        'price': price,
        'period': period,
        'key': key,
        'retention_limit': retentionLimit,
        'user_limit': userLimit,
        'status': status,
        'created_date': createdDate?.toIso8601String(),
        'updated_date': updatedDate?.toIso8601String(),
      };
}