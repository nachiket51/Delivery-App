/// id : 2
/// uuid : null
/// name : "Billy"
/// surname : "Mahmood"
/// fullname : "Billy Mahmood"
/// username : "billy@deliveryapp.com"
/// avatar : {"disk_name":"60cb3726e4bbc672956705.jpg","file_name":"AvataruKpFx9.jpg","content_type":"image/jpeg","path":"https://api-dev.deliveryapp.com/storage/app/uploads/public/60c/b37/26e/60cb3726e4bbc672956705.jpg","extension":"jpg"}
/// location : null
/// company_name : null
/// registration_number : null
/// vehicle_id : null
/// account_id : null
/// delivery_radius : null
/// pickup_radius : null
/// mobile_number : "+447966666666"
/// average_rating : 0
/// is_customer : true
/// is_driver : false
/// is_activated : false
/// mobile_number_formatted : "7966 666666"
/// show_onroute_orders : 1
/// onroute_latitude : ""
/// onroute_longitude : ""
/// vehicle : null
/// documents_uploaded : 0
/// has_notifications : false
/// show_creditsafe : false
/// creditsafe : null
/// credit_exceed : null
/// email : "billy@deliveryapp.com"
/// date_of_birth : ""
/// created_at : "2021-10-06 15:03:49"
/// updated_at : "2021-10-06 15:03:49"
/// latlng : null
/// devices : []
/// addresses : []
/// cards : []
/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjIsImlzcyI6Imh0dHBzOi8vYXBpLWRldi5kZWxpdmVyeWFwcC5jb20vYXBpL3YxL3VzZXJzL2F1dGgiLCJpYXQiOjE2MzQxMjg4MTUsImV4cCI6MTY2NTY2NDgxNSwibmJmIjoxNjM0MTI4ODE1LCJqdGkiOiJyN0lJYnIwVVo2M2hTSjRsIn0.fAmp-3CJciB4PVdgVZHtcQHgpvR8I3CCEpDatiVdJcY"

class Login {
  int? _id;
  dynamic? _uuid;
  String? _name;
  String? _surname;
  String? _fullname;
  String? _username;
  Avatar? _avatar;
  dynamic? _location;
  dynamic? _companyName;
  dynamic? _registrationNumber;
  dynamic? _vehicleId;
  dynamic? _accountId;
  dynamic? _deliveryRadius;
  dynamic? _pickupRadius;
  String? _mobileNumber;
  int? _averageRating;
  bool? _isCustomer;
  bool? _isDriver;
  bool? _isActivated;
  String? _mobileNumberFormatted;
  int? _showOnrouteOrders;
  String? _onrouteLatitude;
  String? _onrouteLongitude;
  dynamic? _vehicle;
  int? _documentsUploaded;
  bool? _hasNotifications;
  bool? _showCreditsafe;
  dynamic? _creditsafe;
  dynamic? _creditExceed;
  String? _email;
  String? _dateOfBirth;
  String? _createdAt;
  String? _updatedAt;
  dynamic? _latlng;
  List<dynamic>? _devices;
  List<dynamic>? _addresses;
  List<dynamic>? _cards;
  String? _token;

  int? get id => _id;
  dynamic? get uuid => _uuid;
  String? get name => _name;
  String? get surname => _surname;
  String? get fullname => _fullname;
  String? get username => _username;
  Avatar? get avatar => _avatar;
  dynamic? get location => _location;
  dynamic? get companyName => _companyName;
  dynamic? get registrationNumber => _registrationNumber;
  dynamic? get vehicleId => _vehicleId;
  dynamic? get accountId => _accountId;
  dynamic? get deliveryRadius => _deliveryRadius;
  dynamic? get pickupRadius => _pickupRadius;
  String? get mobileNumber => _mobileNumber;
  int? get averageRating => _averageRating;
  bool? get isCustomer => _isCustomer;
  bool? get isDriver => _isDriver;
  bool? get isActivated => _isActivated;
  String? get mobileNumberFormatted => _mobileNumberFormatted;
  int? get showOnrouteOrders => _showOnrouteOrders;
  String? get onrouteLatitude => _onrouteLatitude;
  String? get onrouteLongitude => _onrouteLongitude;
  dynamic? get vehicle => _vehicle;
  int? get documentsUploaded => _documentsUploaded;
  bool? get hasNotifications => _hasNotifications;
  bool? get showCreditsafe => _showCreditsafe;
  dynamic? get creditsafe => _creditsafe;
  dynamic? get creditExceed => _creditExceed;
  String? get email => _email;
  String? get dateOfBirth => _dateOfBirth;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic? get latlng => _latlng;
  List<dynamic>? get devices => _devices;
  List<dynamic>? get addresses => _addresses;
  List<dynamic>? get cards => _cards;
  String? get token => _token;

  Login({
      int? id, 
      dynamic? uuid, 
      String? name, 
      String? surname, 
      String? fullname, 
      String? username, 
      Avatar? avatar, 
      dynamic? location, 
      dynamic? companyName, 
      dynamic? registrationNumber, 
      dynamic? vehicleId, 
      dynamic? accountId, 
      dynamic? deliveryRadius, 
      dynamic? pickupRadius, 
      String? mobileNumber, 
      int? averageRating, 
      bool? isCustomer, 
      bool? isDriver, 
      bool? isActivated, 
      String? mobileNumberFormatted, 
      int? showOnrouteOrders, 
      String? onrouteLatitude, 
      String? onrouteLongitude, 
      dynamic? vehicle, 
      int? documentsUploaded, 
      bool? hasNotifications, 
      bool? showCreditsafe, 
      dynamic? creditsafe, 
      dynamic? creditExceed, 
      String? email, 
      String? dateOfBirth, 
      String? createdAt, 
      String? updatedAt, 
      dynamic? latlng, 
      List<dynamic>? devices, 
      List<dynamic>? addresses, 
      List<dynamic>? cards, 
      String? token}){
    _id = id;
    _uuid = uuid;
    _name = name;
    _surname = surname;
    _fullname = fullname;
    _username = username;
    _avatar = avatar;
    _location = location;
    _companyName = companyName;
    _registrationNumber = registrationNumber;
    _vehicleId = vehicleId;
    _accountId = accountId;
    _deliveryRadius = deliveryRadius;
    _pickupRadius = pickupRadius;
    _mobileNumber = mobileNumber;
    _averageRating = averageRating;
    _isCustomer = isCustomer;
    _isDriver = isDriver;
    _isActivated = isActivated;
    _mobileNumberFormatted = mobileNumberFormatted;
    _showOnrouteOrders = showOnrouteOrders;
    _onrouteLatitude = onrouteLatitude;
    _onrouteLongitude = onrouteLongitude;
    _vehicle = vehicle;
    _documentsUploaded = documentsUploaded;
    _hasNotifications = hasNotifications;
    _showCreditsafe = showCreditsafe;
    _creditsafe = creditsafe;
    _creditExceed = creditExceed;
    _email = email;
    _dateOfBirth = dateOfBirth;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _latlng = latlng;
    _devices = devices;
    _addresses = addresses;
    _cards = cards;
    _token = token;
}

  Login.fromJson(dynamic json) {
    _id = json['id'];
    _uuid = json['uuid'];
    _name = json['name'];
    _surname = json['surname'];
    _fullname = json['fullname'];
    _username = json['username'];
    _avatar = json['avatar'] != null ? Avatar.fromJson(json['avatar']) : null;
    _location = json['location'];
    _companyName = json['company_name'];
    _registrationNumber = json['registration_number'];
    _vehicleId = json['vehicle_id'];
    _accountId = json['account_id'];
    _deliveryRadius = json['delivery_radius'];
    _pickupRadius = json['pickup_radius'];
    _mobileNumber = json['mobile_number'];
    _averageRating = json['average_rating'];
    _isCustomer = json['is_customer'];
    _isDriver = json['is_driver'];
    _isActivated = json['is_activated'];
    _mobileNumberFormatted = json['mobile_number_formatted'];
    _showOnrouteOrders = json['show_onroute_orders'];
    _onrouteLatitude = json['onroute_latitude'];
    _onrouteLongitude = json['onroute_longitude'];
    _vehicle = json['vehicle'];
    _documentsUploaded = json['documents_uploaded'];
    _hasNotifications = json['has_notifications'];
    _showCreditsafe = json['show_creditsafe'];
    _creditsafe = json['creditsafe'];
    _creditExceed = json['credit_exceed'];
    _email = json['email'];
    _dateOfBirth = json['date_of_birth'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _latlng = json['latlng'];
    if (json['devices'] != null) {
      _devices = [];
      json['devices'].forEach((v) {
        _devices?.add(v);
      });
    }
    if (json['addresses'] != null) {
      _addresses = [];
      json['addresses'].forEach((v) {
        _addresses?.add(v);
      });
    }
    if (json['cards'] != null) {
      _cards = [];
      json['cards'].forEach((v) {
        _cards?.add(v);
      });
    }
    _token = json['token'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['uuid'] = _uuid;
    map['name'] = _name;
    map['surname'] = _surname;
    map['fullname'] = _fullname;
    map['username'] = _username;
    if (_avatar != null) {
      map['avatar'] = _avatar?.toJson();
    }
    map['location'] = _location;
    map['company_name'] = _companyName;
    map['registration_number'] = _registrationNumber;
    map['vehicle_id'] = _vehicleId;
    map['account_id'] = _accountId;
    map['delivery_radius'] = _deliveryRadius;
    map['pickup_radius'] = _pickupRadius;
    map['mobile_number'] = _mobileNumber;
    map['average_rating'] = _averageRating;
    map['is_customer'] = _isCustomer;
    map['is_driver'] = _isDriver;
    map['is_activated'] = _isActivated;
    map['mobile_number_formatted'] = _mobileNumberFormatted;
    map['show_onroute_orders'] = _showOnrouteOrders;
    map['onroute_latitude'] = _onrouteLatitude;
    map['onroute_longitude'] = _onrouteLongitude;
    map['vehicle'] = _vehicle;
    map['documents_uploaded'] = _documentsUploaded;
    map['has_notifications'] = _hasNotifications;
    map['show_creditsafe'] = _showCreditsafe;
    map['creditsafe'] = _creditsafe;
    map['credit_exceed'] = _creditExceed;
    map['email'] = _email;
    map['date_of_birth'] = _dateOfBirth;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['latlng'] = _latlng;
    if (_devices != null) {
      map['devices'] = _devices?.map((v) => v.toJson()).toList();
    }
    if (_addresses != null) {
      map['addresses'] = _addresses?.map((v) => v.toJson()).toList();
    }
    if (_cards != null) {
      map['cards'] = _cards?.map((v) => v.toJson()).toList();
    }
    map['token'] = _token;
    return map;
  }

}

/// disk_name : "60cb3726e4bbc672956705.jpg"
/// file_name : "AvataruKpFx9.jpg"
/// content_type : "image/jpeg"
/// path : "https://api-dev.deliveryapp.com/storage/app/uploads/public/60c/b37/26e/60cb3726e4bbc672956705.jpg"
/// extension : "jpg"

class Avatar {
  String? _diskName;
  String? _fileName;
  String? _contentType;
  String? _path;
  String? _extension;

  String? get diskName => _diskName;
  String? get fileName => _fileName;
  String? get contentType => _contentType;
  String? get path => _path;
  String? get extension => _extension;

  Avatar({
      String? diskName, 
      String? fileName, 
      String? contentType, 
      String? path, 
      String? extension}){
    _diskName = diskName;
    _fileName = fileName;
    _contentType = contentType;
    _path = path;
    _extension = extension;
}

  Avatar.fromJson(dynamic json) {
    _diskName = json['disk_name'];
    _fileName = json['file_name'];
    _contentType = json['content_type'];
    _path = json['path'];
    _extension = json['extension'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['disk_name'] = _diskName;
    map['file_name'] = _fileName;
    map['content_type'] = _contentType;
    map['path'] = _path;
    map['extension'] = _extension;
    return map;
  }

}