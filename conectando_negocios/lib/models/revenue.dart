class Revenue {
  int monthlyIncome;
  String profession;

  Revenue({this.monthlyIncome, this.profession});

  Revenue.fromJson(Map<String, dynamic> json) {
    monthlyIncome = json['monthlyIncome'];
    profession = json['profession'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['monthlyIncome'] = this.monthlyIncome;
    data['profession'] = this.profession;
    return data;
  }
}
