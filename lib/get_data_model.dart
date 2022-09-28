
class GetData {
  GetData({
    required this.results,
    required this.info,
  });
  late final List<Results> results;
  late final Info info;
  
  GetData.fromJson(Map<String, dynamic> json){
    results = List.from(json['results']).map((e)=>Results.fromJson(e)).toList();
    info = Info.fromJson(json['info']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['results'] = results.map((e)=>e.toJson()).toList();
    _data['info'] = info.toJson();
    return _data;
  }
}

class Results {
  Results({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat,
  });
  late final String gender;
  late final Name name;
  late final Location location;
  late final String email;
  late final Login login;
  late final Dob dob;
  late final Registered registered;
  late final String phone;
  late final String cell;
  late final Id id;
  late final Picture picture;
  late final String nat;
  
  Results.fromJson(Map<String, dynamic> json){
    gender = json['gender'];
    name = Name.fromJson(json['name']);
    location = Location.fromJson(json['location']);
    email = json['email'];
    login = Login.fromJson(json['login']);
    dob = Dob.fromJson(json['dob']);
    registered = Registered.fromJson(json['registered']);
    phone = json['phone'];
    cell = json['cell'];
    id = Id.fromJson(json['id']);
    picture = Picture.fromJson(json['picture']);
    nat = json['nat'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['gender'] = gender;
    _data['name'] = name.toJson();
    _data['location'] = location.toJson();
    _data['email'] = email;
    _data['login'] = login.toJson();
    _data['dob'] = dob.toJson();
    _data['registered'] = registered.toJson();
    _data['phone'] = phone;
    _data['cell'] = cell;
    _data['id'] = id.toJson();
    _data['picture'] = picture.toJson();
    _data['nat'] = nat;
    return _data;
  }
}

class Name {
  Name({
    required this.title,
    required this.first,
    required this.last,
  });
  late final String title;
  late final String first;
  late final String last;
  
  Name.fromJson(Map<String, dynamic> json){
    title = json['title'];
    first = json['first'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['first'] = first;
    _data['last'] = last;
    return _data;
  }
}

class Location {
  Location({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });
  late final Street street;
  late final String city;
  late final String state;
  late final String country;
  late final int postcode;
  late final Coordinates coordinates;
  late final Timezone timezone;
  
  Location.fromJson(Map<String, dynamic> json){
    street = Street.fromJson(json['street']);
    city = json['city'];
    state = json['state'];
    country = json['country'];
    postcode = json['postcode'];
    coordinates = Coordinates.fromJson(json['coordinates']);
    timezone = Timezone.fromJson(json['timezone']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['street'] = street.toJson();
    _data['city'] = city;
    _data['state'] = state;
    _data['country'] = country;
    _data['postcode'] = postcode;
    _data['coordinates'] = coordinates.toJson();
    _data['timezone'] = timezone.toJson();
    return _data;
  }
}

class Street {
  Street({
    required this.number,
    required this.name,
  });
  late final int number;
  late final String name;
  
  Street.fromJson(Map<String, dynamic> json){
    number = json['number'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['number'] = number;
    _data['name'] = name;
    return _data;
  }
}

class Coordinates {
  Coordinates({
    required this.latitude,
    required this.longitude,
  });
  late final String latitude;
  late final String longitude;
  
  Coordinates.fromJson(Map<String, dynamic> json){
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    return _data;
  }
}

class Timezone {
  Timezone({
    required this.offset,
    required this.description,
  });
  late final String offset;
  late final String description;
  
  Timezone.fromJson(Map<String, dynamic> json){
    offset = json['offset'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['offset'] = offset;
    _data['description'] = description;
    return _data;
  }
}

class Login {
  Login({
    required this.uuid,
    required this.username,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sha1,
    required this.sha256,
  });
  late final String uuid;
  late final String username;
  late final String password;
  late final String salt;
  late final String md5;
  late final String sha1;
  late final String sha256;
  
  Login.fromJson(Map<String, dynamic> json){
    uuid = json['uuid'];
    username = json['username'];
    password = json['password'];
    salt = json['salt'];
    md5 = json['md5'];
    sha1 = json['sha1'];
    sha256 = json['sha256'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['uuid'] = uuid;
    _data['username'] = username;
    _data['password'] = password;
    _data['salt'] = salt;
    _data['md5'] = md5;
    _data['sha1'] = sha1;
    _data['sha256'] = sha256;
    return _data;
  }
}

class Dob {
  Dob({
    required this.date,
    required this.age,
  });
  late final String date;
  late final int age;
  
  Dob.fromJson(Map<String, dynamic> json){
    date = json['date'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['date'] = date;
    _data['age'] = age;
    return _data;
  }
}

class Registered {
  Registered({
    required this.date,
    required this.age,
  });
  late final String date;
  late final int age;
  
  Registered.fromJson(Map<String, dynamic> json){
    date = json['date'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['date'] = date;
    _data['age'] = age;
    return _data;
  }
}

class Id {
  Id({
    required this.name,
    required this.value,
  });
  late final String name;
  late final String value;
  
  Id.fromJson(Map<String, dynamic> json){
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['value'] = value;
    return _data;
  }
}

class Picture {
  Picture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });
  late final String large;
  late final String medium;
  late final String thumbnail;
  
  Picture.fromJson(Map<String, dynamic> json){
    large = json['large'];
    medium = json['medium'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['large'] = large;
    _data['medium'] = medium;
    _data['thumbnail'] = thumbnail;
    return _data;
  }
}

class Info {
  Info({
    required this.seed,
    required this.results,
    required this.page,
    required this.version,
  });
  late final String seed;
  late final int results;
  late final int page;
  late final String version;
  
  Info.fromJson(Map<String, dynamic> json){
    seed = json['seed'];
    results = json['results'];
    page = json['page'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['seed'] = seed;
    _data['results'] = results;
    _data['page'] = page;
    _data['version'] = version;
    return _data;
  }
}

