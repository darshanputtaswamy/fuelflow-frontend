class FuelUnloading {
  String? uid;
  String? storeUid;
  DateTime? unloadDate;
  String? fuelTank;
  String? vehicleNumber;
  String? depoName;
  String? sampleBox;
  double? beforeUnloadDipReading;
  double? beforeUnloadLiters;
  double? afterUnloadDipReading;
  double? afterUnloadLiters;
  double? sales;
  double? billDensity;
  double? checkDensity;

FuelUnloading({
    this.uid,
    this.storeUid,
    this.unloadDate,
    this.fuelTank,
    this.vehicleNumber,
    this.depoName,
    this.sampleBox,
    this.beforeUnloadDipReading,
    this.beforeUnloadLiters,
    this.afterUnloadDipReading,
    this.afterUnloadLiters,
    this.sales,
    this.billDensity,
    this.checkDensity,
  });

  factory FuelUnloading.fromMap(Map<String, dynamic> json) => FuelUnloading(
        uid : json['uid'],
        storeUid : json['store_uid'],
        unloadDate : DateTime.parse(json['unload_date']),
        fuelTank : json['fuel_tank'],
        vehicleNumber : json['vehicle_number'],
        depoName : json['depo_name'],
        sampleBox : json['sample_box'],
        beforeUnloadDipReading : json['before_unload_dip_reading'],
        beforeUnloadLiters : json['before_unload_liters'],
        afterUnloadDipReading : json['after_unload_dip_reading'],
        afterUnloadLiters : json['after_unload_liters'],
        sales : json['sales'],
        billDensity : json['bill_density'],
        checkDensity : json['check_density']
      );


  FuelUnloading.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        storeUid = json['store_uid'],
        unloadDate = DateTime.parse(json['unload_date']),
        fuelTank = json['fuel_tank'],
        vehicleNumber = json['vehicle_number'],
        depoName = json['depo_name'],
        sampleBox = json['sample_box'],
        beforeUnloadDipReading = json['before_unload_dip_reading'],
        beforeUnloadLiters = json['before_unload_liters'],
        afterUnloadDipReading = json['after_unload_dip_reading'],
        afterUnloadLiters = json['after_unload_liters'],
        sales = json['sales'],
        billDensity = json['bill_density'],
        checkDensity = json['check_density'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'store_uid': storeUid,
        'unload_date': unloadDate?.toIso8601String(),
        'fuel_tank': fuelTank,
        'vehicle_number': vehicleNumber,
        'depo_name': depoName,
        'sample_box': sampleBox,
        'before_unload_dip_reading': beforeUnloadDipReading,
        'before_unload_liters': beforeUnloadLiters,
        'after_unload_dip_reading': afterUnloadDipReading,
        'after_unload_liters': afterUnloadLiters,
        'sales': sales,
        'bill_density': billDensity,
        'check_density': checkDensity,
      };
}
