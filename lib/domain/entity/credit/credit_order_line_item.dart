class StoreCreditOrderLineItems {
  String? uid;
  String? orderId;
  String? vehicleId;
  double? liters;
  double? rate;
  double? amount;


 StoreCreditOrderLineItems({
    this.uid,
    this.orderId,
    this.vehicleId,
    this.liters,
    this.rate,
    this.amount
  });

  factory StoreCreditOrderLineItems.fromMap(Map<String, dynamic> json) => StoreCreditOrderLineItems(
        uid : json['uid'],
        orderId : json['order_id'],
        vehicleId : json['vehicle_id'],
        liters : json['liters'],
        rate : json['rate'],
        amount : json['amount']
      );


  StoreCreditOrderLineItems.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        orderId = json['order_id'],
        vehicleId = json['vehicle_id'],
        liters = json['liters'],
        rate = json['rate'],
        amount = json['amount'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'order_id': orderId,
        'vehicle_id': vehicleId,
        'liters': liters,
        'rate': rate,
        'amount': amount,
      };
}
