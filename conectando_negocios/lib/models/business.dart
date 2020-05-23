class Businness {
  int type;
  String projectName;
  String segment;
  String status;
  String earnings;
  String moreInfo;

  Businness(
      {this.type,
      this.projectName,
      this.segment,
      this.status,
      this.earnings,
      this.moreInfo});

  Businness.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    projectName = json['projectName'];
    segment = json['segment'];
    status = json['status'];
    earnings = json['earnings'];
    moreInfo = json['moreInfo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['projectName'] = this.projectName;
    data['segment'] = this.segment;
    data['status'] = this.status;
    data['earnings'] = this.earnings;
    data['moreInfo'] = this.moreInfo;
    return data;
  }
}
