class UserinApp {
  String _uid;
  String _email;
  String _password;
  String _name;

  String get uid => this._uid;
  String get email => this._email;
  String get password => this._password;
  String get name => this._name;

  set uid(id) {
    this._uid = id;
  }

  set email(email) {
    this._email = email;
  }

  set password(password) {
    this._password = password;
  }

  set name(name) {
    this._name = name;
  }

  UserinApp.fromMap(Map map) {
    this.uid = map["uid"];
    this.email = map["email"];
    this.password = map["password"];
    this.name = map["name"];
  }

  Map toMap() {
    return {
      'uid': this.uid,
      'email': this.email,
      'password': this.password,
      'name': this.name,
    };
  }
}
