class StoreCreditVehicles {
  String? uid;
  String? storeUid;
  String? userUid;
  String? vehicleNum;
  String? status;


  StoreCreditVehicles({
    this.uid,
    this.storeUid,
    this.userUid,
    this.vehicleNum,
    this.status,
  });

  factory StoreCreditVehicles.fromMap(Map<String, dynamic> json) => StoreCreditVehicles(
        uid : json['uid'],
        storeUid : json['store_uid'],
        userUid : json['user_uid'],
        vehicleNum : json['vehicle_num'],
        status : json['status']
      );
    
  StoreCreditVehicles.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        storeUid = json['store_uid'],
        userUid = json['user_uid'],
        vehicleNum = json['vehicle_num'],
        status = json['status'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'store_uid': storeUid,
        'user_uid': userUid,
        'vehicle_num': vehicleNum,
        'status': status,
      };
}
