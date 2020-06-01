class User {
    int id;
    String name;
    String username;
    String password;

    User({this.id, this.name, this.username, this.password});

    User.fromJson(Map<String, dynamic> map) {
        id = map['id'];
        id = map['name'];
        id = map['username'];
        id = map['password'];
    }
}
