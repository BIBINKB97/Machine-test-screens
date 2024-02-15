///This is the model class used to pass data to the backend with the help of API
class UserModel {
  ///Field for store username
  String username;
  ///Field for store password
  String password;

  UserModel({required this.username, required this.password});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      username: map['username'] as String,
      password: map['password'] as String,
    );
  }

 
}
