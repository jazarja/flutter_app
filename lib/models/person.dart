class Person {
  String _id;
  String _name;

  Person(this._name);

  Person.map(dynamic obj) {
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

  Person.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
  }
}
