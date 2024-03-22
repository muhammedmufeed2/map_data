
class CollectData {
  List<Data>? data;

  CollectData({this.data});

  CollectData.fromJson(Map<String, dynamic> json) {
    if(json["data"] is List) {
      data = json["data"] == null ? null : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    }
  }

  static List<CollectData> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => CollectData.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }

  CollectData copyWith({
    List<Data>? data,
  }) => CollectData(
    data: data ?? this.data,
  );
}

class Data {
  String? businessId;
  String? phoneNumber;
  String? name;
  String? fullAddress;
  double? latitude;
  double? longitude;
  dynamic reviewCount;
  dynamic rating;
  String? timezone;
  String? website;
  String? placeId;
  String? placeLink;
  List<String>? types;
  dynamic priceLevel;
  WorkingHours? workingHours;
  String? city;
  List<Photos>? photos;
  String? state;
  List<dynamic>? description;

  Data({this.businessId, this.phoneNumber, this.name, this.fullAddress, this.latitude, this.longitude, this.reviewCount, this.rating, this.timezone, this.website, this.placeId, this.placeLink, this.types, this.priceLevel, this.workingHours, this.city, this.photos, this.state, this.description});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["business_id"] is String) {
      businessId = json["business_id"];
    }
    if(json["phone_number"] is String) {
      phoneNumber = json["phone_number"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["full_address"] is String) {
      fullAddress = json["full_address"];
    }
    if(json["latitude"] is num) {
      latitude = (json["latitude"] as num).toDouble();
    }
    if(json["longitude"] is num) {
      longitude = (json["longitude"] as num).toDouble();
    }
    reviewCount = json["review_count"];
    rating = json["rating"];
    if(json["timezone"] is String) {
      timezone = json["timezone"];
    }
    if(json["website"] is String) {
      website = json["website"];
    }
    if(json["place_id"] is String) {
      placeId = json["place_id"];
    }
    if(json["place_link"] is String) {
      placeLink = json["place_link"];
    }
    if(json["types"] is List) {
      types = json["types"] == null ? null : List<String>.from(json["types"]);
    }
    priceLevel = json["price_level"];
    if(json["working_hours"] is Map) {
      workingHours = json["working_hours"] == null ? null : WorkingHours.fromJson(json["working_hours"]);
    }
    if(json["city"] is String) {
      city = json["city"];
    }
    if(json["photos"] is List) {
      photos = json["photos"] == null ? null : (json["photos"] as List).map((e) => Photos.fromJson(e)).toList();
    }
    if(json["state"] is String) {
      state = json["state"];
    }
    if(json["description"] is List) {
      description = json["description"] ?? [];
    }
  }

  static List<Data> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Data.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["business_id"] = businessId;
    _data["phone_number"] = phoneNumber;
    _data["name"] = name;
    _data["full_address"] = fullAddress;
    _data["latitude"] = latitude;
    _data["longitude"] = longitude;
    _data["review_count"] = reviewCount;
    _data["rating"] = rating;
    _data["timezone"] = timezone;
    _data["website"] = website;
    _data["place_id"] = placeId;
    _data["place_link"] = placeLink;
    if(types != null) {
      _data["types"] = types;
    }
    _data["price_level"] = priceLevel;
    if(workingHours != null) {
      _data["working_hours"] = workingHours?.toJson();
    }
    _data["city"] = city;
    if(photos != null) {
      _data["photos"] = photos?.map((e) => e.toJson()).toList();
    }
    _data["state"] = state;
    if(description != null) {
      _data["description"] = description;
    }
    return _data;
  }

  Data copyWith({
    String? businessId,
    String? phoneNumber,
    String? name,
    String? fullAddress,
    double? latitude,
    double? longitude,
    dynamic reviewCount,
    dynamic rating,
    String? timezone,
    String? website,
    String? placeId,
    String? placeLink,
    List<String>? types,
    dynamic priceLevel,
    WorkingHours? workingHours,
    String? city,
    List<Photos>? photos,
    String? state,
    List<dynamic>? description,
  }) => Data(
    businessId: businessId ?? this.businessId,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    name: name ?? this.name,
    fullAddress: fullAddress ?? this.fullAddress,
    latitude: latitude ?? this.latitude,
    longitude: longitude ?? this.longitude,
    reviewCount: reviewCount ?? this.reviewCount,
    rating: rating ?? this.rating,
    timezone: timezone ?? this.timezone,
    website: website ?? this.website,
    placeId: placeId ?? this.placeId,
    placeLink: placeLink ?? this.placeLink,
    types: types ?? this.types,
    priceLevel: priceLevel ?? this.priceLevel,
    workingHours: workingHours ?? this.workingHours,
    city: city ?? this.city,
    photos: photos ?? this.photos,
    state: state ?? this.state,
    description: description ?? this.description,
  );
}

class Photos {
  String? src;
  dynamic maxSize;
  List<int>? minSize;

  Photos({this.src, this.maxSize, this.minSize});

  Photos.fromJson(Map<String, dynamic> json) {
    if(json["src"] is String) {
      src = json["src"];
    }
    maxSize = json["max_size"];
    if(json["min_size"] is List) {
      minSize = json["min_size"] == null ? null : List<int>.from(json["min_size"]);
    }
  }

  static List<Photos> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Photos.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["src"] = src;
    _data["max_size"] = maxSize;
    if(minSize != null) {
      _data["min_size"] = minSize;
    }
    return _data;
  }

  Photos copyWith({
    String? src,
    dynamic maxSize,
    List<int>? minSize,
  }) => Photos(
    src: src ?? this.src,
    maxSize: maxSize ?? this.maxSize,
    minSize: minSize ?? this.minSize,
  );
}

class WorkingHours {
  List<String>? friday;
  List<String>? saturday;
  List<String>? sunday;
  List<String>? monday;
  List<String>? tuesday;
  List<String>? wednesday;
  List<String>? thursday;

  WorkingHours({this.friday, this.saturday, this.sunday, this.monday, this.tuesday, this.wednesday, this.thursday});

  WorkingHours.fromJson(Map<String, dynamic> json) {
    if(json["Friday"] is List) {
      friday = json["Friday"] == null ? null : List<String>.from(json["Friday"]);
    }
    if(json["Saturday"] is List) {
      saturday = json["Saturday"] == null ? null : List<String>.from(json["Saturday"]);
    }
    if(json["Sunday"] is List) {
      sunday = json["Sunday"] == null ? null : List<String>.from(json["Sunday"]);
    }
    if(json["Monday"] is List) {
      monday = json["Monday"] == null ? null : List<String>.from(json["Monday"]);
    }
    if(json["Tuesday"] is List) {
      tuesday = json["Tuesday"] == null ? null : List<String>.from(json["Tuesday"]);
    }
    if(json["Wednesday"] is List) {
      wednesday = json["Wednesday"] == null ? null : List<String>.from(json["Wednesday"]);
    }
    if(json["Thursday"] is List) {
      thursday = json["Thursday"] == null ? null : List<String>.from(json["Thursday"]);
    }
  }

  static List<WorkingHours> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => WorkingHours.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(friday != null) {
      _data["Friday"] = friday;
    }
    if(saturday != null) {
      _data["Saturday"] = saturday;
    }
    if(sunday != null) {
      _data["Sunday"] = sunday;
    }
    if(monday != null) {
      _data["Monday"] = monday;
    }
    if(tuesday != null) {
      _data["Tuesday"] = tuesday;
    }
    if(wednesday != null) {
      _data["Wednesday"] = wednesday;
    }
    if(thursday != null) {
      _data["Thursday"] = thursday;
    }
    return _data;
  }

  WorkingHours copyWith({
    List<String>? friday,
    List<String>? saturday,
    List<String>? sunday,
    List<String>? monday,
    List<String>? tuesday,
    List<String>? wednesday,
    List<String>? thursday,
  }) => WorkingHours(
    friday: friday ?? this.friday,
    saturday: saturday ?? this.saturday,
    sunday: sunday ?? this.sunday,
    monday: monday ?? this.monday,
    tuesday: tuesday ?? this.tuesday,
    wednesday: wednesday ?? this.wednesday,
    thursday: thursday ?? this.thursday,
  );
}