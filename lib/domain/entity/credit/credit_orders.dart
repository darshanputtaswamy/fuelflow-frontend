class StoreCreditOrders {
  String? uid;
  String? posUid;
  String? storeUid;
  String? rotaUid;
  String? userUid;
  double? totalAmount;
  String? type;
  DateTime? createdDate;
  DateTime? updatedDate;
  String? paymentMode;



  StoreCreditOrders({
    this.uid,
    this.posUid,
    this.storeUid,
    this.rotaUid,
    this.userUid,
    this.totalAmount,
    this.type,
    this.createdDate,
    this.updatedDate,
    this.paymentMode,
  });

  factory StoreCreditOrders.fromMap(Map<String, dynamic> json) => StoreCreditOrders(
        uid : json['uid'],
        posUid : json['pos_uid'],
        storeUid : json['store_uid'],
        rotaUid : json['rota_uid'],
        userUid : json['user_uid'],
        totalAmount : json['total_amount'],
        type : json['type'],
        createdDate : DateTime.parse(json['created_date']),
        updatedDate :
            json['updated_date'] != null ? DateTime.parse(json['updated_date']) : null,
        paymentMode : json['payment_mode']
      );

  StoreCreditOrders.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        posUid = json['pos_uid'],
        storeUid = json['store_uid'],
        rotaUid = json['rota_uid'],
        userUid = json['user_uid'],
        totalAmount = json['total_amount'],
        type = json['type'],
        createdDate = DateTime.parse(json['created_date']),
        updatedDate =
            json['updated_date'] != null ? DateTime.parse(json['updated_date']) : null,
        paymentMode = json['payment_mode'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'pos_uid': posUid,
        'store_uid': storeUid,
        'rota_uid': rotaUid,
        'user_uid': userUid,
        'total_amount': totalAmount,
        'type': type,
        'created_date': createdDate?.toIso8601String(),
        'updated_date': updatedDate?.toIso8601String(),
        'payment_mode': paymentMode,
      };
}
