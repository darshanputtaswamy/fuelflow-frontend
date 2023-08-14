class FuelDipReader {
  String? uid;
  String? storeUid;
  String? fuelTank;
  double? dipNumber;
  double? liters;


  FuelDipReader({
    this.uid,
    this.storeUid,
    this.fuelTank,
    this.dipNumber,
    this.liters,
  });

  factory FuelDipReader.fromMap(Map<String, dynamic> json) => FuelDipReader(
        uid : json['uid'],
        storeUid : json['store_uid'],
        fuelTank : json['fuel_tank'],
        dipNumber : json['dip_number'],
        liters : json['liters'],
      );

  FuelDipReader.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        storeUid = json['store_uid'],
        fuelTank = json['fuel_tank'],
        dipNumber = json['dip_number'],
        liters = json['liters'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'store_uid': storeUid,
        'fuel_tank': fuelTank,
        'dip_number': dipNumber,
        'liters': liters,
      };
}