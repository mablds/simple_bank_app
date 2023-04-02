class UserAccount {
  String? id;
  int? account;
  String? owner;
  String? value;
  String? admin;
  String? token;

  UserAccount({
    this.id,
    this.account,
    this.owner,
    this.value,
    this.admin,
    this.token,
  });

  UserAccount.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    account = json['account'];
    owner = json['owner'];
    value = json['value'];
    admin = json['admin'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['account'] = account;
    data['owner'] = owner;
    data['value'] = value;
    data['admin'] = admin;
    data['token'] = token;
    return data;
  }
}
