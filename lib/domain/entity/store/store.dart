import 'package:fuelflow/domain/entity/store/store_user.dart';
import 'package:fuelflow/domain/entity/subscription/subscription.dart';

class Store {
  String? uid;
  String? businessName;
  String? type;
  String? address;
  String? postalCode;
  String? gstNumber;
  String? isDeleted;
  DateTime? createdDate;
  DateTime? updatedDate;
  List<StoreUserPrivilege>? storeUserRoles;
  List<Subscription>? subscriptionHistory;

  Store.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        businessName = json['buisness_name'],
        type = json['type'],
        address = json['address'],
        postalCode = json['postal_code'],
        gstNumber = json['gst_number'],
        isDeleted = json['is_deleted'],
        createdDate = DateTime.parse(json['created_date']),
        updatedDate =
            json['updated_date'] != null ? DateTime.parse(json['updated_date']) : null,
        storeUserRoles = (json['store_user_roles'] as List<dynamic>)
            .map((roleJson) => StoreUserPrivilege.fromJson(roleJson))
            .toList(),
        subscriptionHistory = (json['subscription_history'] as List<dynamic>)
            .map((subscriptionJson) => Subscription.fromJson(subscriptionJson))
            .toList();

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'buisness_name': businessName,
        'type': type,
        'address': address,
        'postal_code': postalCode,
        'gst_number': gstNumber,
        'is_deleted': isDeleted,
        'created_date': createdDate?.toIso8601String(),
        'updated_date': updatedDate?.toIso8601String(),
        'store_user_roles': storeUserRoles?.map((role) => role.toJson()).toList(),
        'subscription_history':
            subscriptionHistory?.map((subscription) => subscription.toJson()).toList(),
      };
}