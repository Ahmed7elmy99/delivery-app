class TestModel {
  String? usersId;
  String? usersName;
  String? usersPassword;
  String? usersEmail;
  String? usersPhone;
  String? usersVerfiycode;
  String? usersApprove;
  String? usersCreate;

  TestModel(
      {this.usersId,
      this.usersName,
      this.usersPassword,
      this.usersEmail,
      this.usersPhone,
      this.usersVerfiycode,
      this.usersApprove,
      this.usersCreate});

  TestModel.fromJson(Map<String, dynamic> json) {
    usersId = json['delivery_id'];
    usersName = json['delivery_name'];
    usersPassword = json['delivery_password'];
    usersEmail = json['delivery_email'];
    usersPhone = json['delivery_phone'];
    usersVerfiycode = json['delivery_verfiycode'];
    usersApprove = json['delivery_approve'];
    usersCreate = json['delivery_create'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['users_id'] = this.usersId;
  //   data['users_name'] = this.usersName;
  //   data['users_password'] = this.usersPassword;
  //   data['users_email'] = this.usersEmail;
  //   data['users_phone'] = this.usersPhone;
  //   data['users_verfiycode'] = this.usersVerfiycode;
  //   data['users_approve'] = this.usersApprove;
  //   data['users_create'] = this.usersCreate;
  //   return data;
  // }
}