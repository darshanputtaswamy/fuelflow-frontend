class User {
  String? uid;
  String? username;
  String? phone;
  String? email;
  String? userType;
  String? isLocked;
  String? isVerified;
  DateTime? createdDate;


  User({
    this.uid,
    this.username,
    this.phone,
    this.email,
    this.userType,
    this.isLocked,
    this.isVerified,
    this.createdDate,
  });

  User.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        username = json['username'],
        phone = json['phone'],
        email = json['email'],
        userType = json['user_type'],
        isLocked = json['is_locked'],
        isVerified = json['is_verified'],
        createdDate = DateTime.parse(json['created_date']);

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'username': username,
        'phone': phone,
        'email': email,
        'user_type': userType,
        'is_locked': isLocked,
        'is_verified': isVerified,
        'created_date': createdDate?.toIso8601String(),
      };
}