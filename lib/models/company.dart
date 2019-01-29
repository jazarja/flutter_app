class Company {
  String _id;
  String _name;

  Company(this._name);

  Company.map(dynamic obj) {
    this._id = obj['id'];
    this._name = obj['name'];
  }

  String get id => _id;

  String get name => _name;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (_id != null) {
      map['id'] = _id;
    }
    map['name'] = _name;
    return map;
  }

  Company.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
  }
}
