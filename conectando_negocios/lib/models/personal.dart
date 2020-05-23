class Personal {
  String cpfCnpj;
  String fullName;
  String cellphone;
  String dob;
  String email;

  Personal({this.cpfCnpj, this.fullName, this.cellphone, this.dob, this.email});

  Personal.fromJson(Map<String, dynamic> json) {
    cpfCnpj = json['cpfCnpj'];
    fullName = json['fullName'];
    cellphone = json['cellphone'];
    dob = json['dob'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cpfCnpj'] = this.cpfCnpj;
    data['fullName'] = this.fullName;
    data['cellphone'] = this.cellphone;
    data['dob'] = this.dob;
    data['email'] = this.email;
    return data;
  }
}
