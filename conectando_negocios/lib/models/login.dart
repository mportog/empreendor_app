class Login {
  String username;
  String token;
  String error;

  Login({this.username, this.token, this.error});

  Login.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    token = json['token'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['token'] = this.token;
    data['error'] = this.error;
    return data;
  }
}
