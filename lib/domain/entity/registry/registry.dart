class FuelRegistry{
  String? uid;
  String? storeUid;
  String? posUid;
  String? rotaUid;
  String? previousUid;
  String? status;
  double? closingReading;
  double? openingReading;
  double? totalSales;
  double? rate;
  double? total;
  double? cashAmountReceived;
  double? cardAmountReceived;
  double? upiAmountReceived;
  double? expenditure;
  double? credits;
  double? balance;

  FuelRegistry({

    this.uid,
    this.storeUid,
    this.posUid,
    this.rotaUid,
    this.previousUid,
    this.status,
    this.closingReading,
    this.openingReading,
    this.totalSales,
    this.rate,
    this.total,
    this.cashAmountReceived,
    this.cardAmountReceived,
    this.upiAmountReceived,
    this.expenditure,
    this.credits,
    this.balance,
  });

  factory FuelRegistry.fromMap(Map<String, dynamic> json) => FuelRegistry(
        uid :json['uid'],
        storeUid :json['store_uid'],
        posUid :json['pos_uid'],
        rotaUid :json['rota_uid'],
        previousUid :json['previous_uid'],
        status :json['status'],
        closingReading :json['closing_reading'],
        openingReading :json['opening_reading'],
        totalSales :json['total_sales'],
        rate :json['rate'],
        total :json['total'],
        cashAmountReceived :json['cash_amount_received'],
        cardAmountReceived :json['card_amount_received'],
        upiAmountReceived :json['upi_amount_received'],
        expenditure :json['expenditure'],
        credits :json['credits'],
        balance :json['balance']
      );


  FuelRegistry.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        storeUid = json['store_uid'],
        posUid = json['pos_uid'],
        rotaUid = json['rota_uid'],
        previousUid = json['previous_uid'],
        status = json['status'],
        closingReading = json['closing_reading'],
        openingReading = json['opening_reading'],
        totalSales = json['total_sales'],
        rate = json['rate'],
        total = json['total'],
        cashAmountReceived = json['cash_amount_received'],
        cardAmountReceived = json['card_amount_received'],
        upiAmountReceived = json['upi_amount_received'],
        expenditure = json['expenditure'],
        credits = json['credits'],
        balance = json['balance'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'store_uid': storeUid,
        'pos_uid': posUid,
        'rota_uid': rotaUid,
        'previous_uid': previousUid,
        'status': status,
        'closing_reading': closingReading,
        'opening_reading': openingReading,
        'total_sales': totalSales,
        'rate': rate,
        'total': total,
        'cash_amount_received': cashAmountReceived,
        'card_amount_received': cardAmountReceived,
        'upi_amount_received': upiAmountReceived,
        'expenditure': expenditure,
        'credits': credits,
        'balance': balance,
      };
}
