class Address {
  String cep;
  String address;
  String city;
  String state;

  Address({this.cep, this.address, this.city, this.state});

  Address.fromJson(Map<String, dynamic> json) {
    cep = json['cep'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cep'] = this.cep;
    data['address'] = this.address;
    data['city'] = this.city;
    data['state'] = this.state;
    return data;
  }
}
